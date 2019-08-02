///
//  Generated code. Do not modify.
//  source: proto/test_schema.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

export 'test_schema.pbenum.dart';

class PlatformVersionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PlatformVersionResponse', package: const $pb.PackageName('com.example.test_plugin'))
    ..aOS(1, 'osName')
    ..a<$core.int>(2, 'osVersion', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  PlatformVersionResponse._() : super();
  factory PlatformVersionResponse() => create();
  factory PlatformVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlatformVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PlatformVersionResponse clone() => PlatformVersionResponse()..mergeFromMessage(this);
  PlatformVersionResponse copyWith(void Function(PlatformVersionResponse) updates) => super.copyWith((message) => updates(message as PlatformVersionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PlatformVersionResponse create() => PlatformVersionResponse._();
  PlatformVersionResponse createEmptyInstance() => create();
  static $pb.PbList<PlatformVersionResponse> createRepeated() => $pb.PbList<PlatformVersionResponse>();
  static PlatformVersionResponse getDefault() => _defaultInstance ??= create()..freeze();
  static PlatformVersionResponse _defaultInstance;

  $core.String get osName => $_getS(0, '');
  set osName($core.String v) { $_setString(0, v); }
  $core.bool hasOsName() => $_has(0);
  void clearOsName() => clearField(1);

  $core.int get osVersion => $_get(1, 0);
  set osVersion($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasOsVersion() => $_has(1);
  void clearOsVersion() => clearField(2);
}

