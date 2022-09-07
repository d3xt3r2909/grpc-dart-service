///
//  Generated code. Do not modify.
//  source: rewards.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'rewards.pb.dart' as $0;
export 'rewards.pb.dart';

class RewardsServiceClient extends $grpc.Client {
  static final _$createStreamNotification =
      $grpc.ClientMethod<$0.Connect, $0.Reward>(
          '/rewards_s.RewardsService/CreateStreamNotification',
          ($0.Connect value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Reward.fromBuffer(value));
  static final _$broadcastReward = $grpc.ClientMethod<$0.Reward, $0.Close>(
      '/rewards_s.RewardsService/BroadcastReward',
      ($0.Reward value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Close.fromBuffer(value));

  RewardsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.Reward> createStreamNotification($0.Connect request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$createStreamNotification, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Close> broadcastReward($0.Reward request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$broadcastReward, request, options: options);
  }
}

abstract class RewardsServiceBase extends $grpc.Service {
  $core.String get $name => 'rewards_s.RewardsService';

  RewardsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Connect, $0.Reward>(
        'CreateStreamNotification',
        createStreamNotification_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Connect.fromBuffer(value),
        ($0.Reward value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Reward, $0.Close>(
        'BroadcastReward',
        broadcastReward_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Reward.fromBuffer(value),
        ($0.Close value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Reward> createStreamNotification_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Connect> request) async* {
    yield* createStreamNotification(call, await request);
  }

  $async.Future<$0.Close> broadcastReward_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Reward> request) async {
    return broadcastReward(call, await request);
  }

  $async.Stream<$0.Reward> createStreamNotification(
      $grpc.ServiceCall call, $0.Connect request);
  $async.Future<$0.Close> broadcastReward(
      $grpc.ServiceCall call, $0.Reward request);
}
