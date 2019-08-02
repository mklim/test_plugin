import 'dart:async';

import 'package:flutter/services.dart';
import 'src/proto/test_schema.pb.dart';

class TestPlugin {
  static MethodChannel _channel = MethodChannel(MethodChannelName.TEST_PLUGIN.name);

  static Future<String> get platformVersion async {
    PlatformVersionResponse res = PlatformVersionResponse.fromBuffer(
        await _channel
            .invokeMethod(MethodChannelCalls.GET_PLATFORM_VERSION.name));
    return "${res.osName} ${res.osVersion}";
  }
}
