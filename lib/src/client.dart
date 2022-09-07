import 'dart:math';

import 'package:grpc/grpc.dart';
import 'package:rewards_s/src/generated/rewards.pbgrpc.dart';
import 'package:args/args.dart';

const titleArg = 'title';
const messageArg = 'message';
const thumbnailArg = 'thumbnail';
const dynamicLinkArg = 'dynamicLink';
const helpArg = 'help';

class Client {
  late RewardsServiceClient stub;

  Future<void> main(List<String> arguments) async {
    final parser = ArgParser()
      ..addOption(
        titleArg,
        abbr: titleArg[0],
        help: 'Define title for banner.',
      )
      ..addOption(
        messageArg,
        abbr: messageArg[0],
        help: 'Define message for banner',
      )
      ..addOption(
        thumbnailArg,
        help: 'Define thumbnail for banner',
      )
      ..addOption(
        dynamicLinkArg,
        abbr: dynamicLinkArg[0],
        help:
            'Define dynamic link which will be process when user press on `more`',
      )
      ..addFlag(
        helpArg,
        abbr: helpArg[0],
        help: 'Display this help message.',
        negatable: false,
      );

    final argResults = parser.parse(arguments);

    if (argResults[helpArg]) {
      // ignore: avoid_print
      print(parser.usage);
      return;
    }
    final reward = Reward()
      ..clear()
      ..id = (Random().nextInt(1000) + 1).toString()
      ..title = argResults[titleArg]
      ..message = argResults[messageArg]
      ..thumbnail = argResults[thumbnailArg]
      ..dynamicLink = argResults[dynamicLinkArg];

    final channel = ClientChannel(
      // @todo replace with your IP address of machine
      '192.168.1.116',
      port: 80,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    stub = RewardsServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
    );

    try {
      await addToStream(reward);
      // await runNotificationStream();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
  }

  Future<void> addToStream(Reward reward) async {
    printReward(reward);
    await stub.broadcastReward(reward);
    print('🚀 Reward registered and will be sent to client 🚀');
  }

  void printReward(Reward r) {
    print(
      '\n\n\n🏆 Following reward will be forwarded to client 🏆\n'
      'title: ${r.title}\n'
      'message: ${r.message}\n'
      'thumbnail: ${r.thumbnail}\n'
      'dynamicLink: ${r.dynamicLink}\n',
    );
  }
}
