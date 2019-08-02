///
//  Generated code. Do not modify.
//  source: proto/test_schema.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class MethodChannelName extends $pb.ProtobufEnum {
  static const MethodChannelName TEST_PLUGIN = MethodChannelName._(0, 'TEST_PLUGIN');

  static const $core.List<MethodChannelName> values = <MethodChannelName> [
    TEST_PLUGIN,
  ];

  static final $core.Map<$core.int, MethodChannelName> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MethodChannelName valueOf($core.int value) => _byValue[value];

  const MethodChannelName._($core.int v, $core.String n) : super(v, n);
}

class MethodChannelCalls extends $pb.ProtobufEnum {
  static const MethodChannelCalls GET_PLATFORM_VERSION = MethodChannelCalls._(0, 'GET_PLATFORM_VERSION');

  static const $core.List<MethodChannelCalls> values = <MethodChannelCalls> [
    GET_PLATFORM_VERSION,
  ];

  static final $core.Map<$core.int, MethodChannelCalls> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MethodChannelCalls valueOf($core.int value) => _byValue[value];

  const MethodChannelCalls._($core.int v, $core.String n) : super(v, n);
}

