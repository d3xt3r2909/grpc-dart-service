///
//  Generated code. Do not modify.
//  source: rewards.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAmlkGAEgASgJUgJpZBIaCgh1c2VybmFtZRgCIAEoCVIIdXNlcm5hbWU=');
@$core.Deprecated('Use rewardDescriptor instead')
const Reward$json = const {
  '1': 'Reward',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'thumbnail', '3': 4, '4': 1, '5': 9, '10': 'thumbnail'},
    const {'1': 'dynamicLink', '3': 5, '4': 1, '5': 9, '10': 'dynamicLink'},
  ],
};

/// Descriptor for `Reward`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rewardDescriptor = $convert.base64Decode('CgZSZXdhcmQSDgoCaWQYASABKAlSAmlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIYCgdtZXNzYWdlGAMgASgJUgdtZXNzYWdlEhwKCXRodW1ibmFpbBgEIAEoCVIJdGh1bWJuYWlsEiAKC2R5bmFtaWNMaW5rGAUgASgJUgtkeW5hbWljTGluaw==');
@$core.Deprecated('Use connectDescriptor instead')
const Connect$json = const {
  '1': 'Connect',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.rewards_s.User', '10': 'user'},
  ],
};

/// Descriptor for `Connect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectDescriptor = $convert.base64Decode('CgdDb25uZWN0EiMKBHVzZXIYASABKAsyDy5yZXdhcmRzX3MuVXNlclIEdXNlcg==');
@$core.Deprecated('Use closeDescriptor instead')
const Close$json = const {
  '1': 'Close',
};

/// Descriptor for `Close`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeDescriptor = $convert.base64Decode('CgVDbG9zZQ==');
