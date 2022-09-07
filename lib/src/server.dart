import 'dart:async';

import 'package:grpc/grpc.dart' as grpc;
import 'package:rewards_s/src/generated/rewards.pbgrpc.dart';

class RewardsService extends RewardsServiceBase {
  StreamController<Reward> sController = StreamController.broadcast();

  /// ListFeatures handler. Returns a stream of features within the given
  /// rectangle.
  @override
  Stream<Reward> createStreamNotification(
    grpc.ServiceCall call,
    Connect request,
  ) =>
      sController.stream;

  @override
  Future<Close> broadcastReward(
    grpc.ServiceCall call,
    Reward request,
  ) async {
    printReward(request);
    sController.add(request);
    return Close();
  }

  void printReward(Reward r) {
    print(
      '\n\n\n⏩ BE received & will forward reward to mobile: ⏩\n'
      'title: ${r.title}\n'
      'message: ${r.message}\n'
      'thumbnail: ${r.thumbnail}\n'
      'dynamicLink: ${r.dynamicLink}\n',
    );
  }
}

class Server {
  Future<void> main(List<String> args) async {
    final server = grpc.Server([RewardsService()]);
    await server.serve(
      address: '0.0.0.0',
      port: 80,
    );
    print('Server listening on port ${server.port}...');
  }
}
