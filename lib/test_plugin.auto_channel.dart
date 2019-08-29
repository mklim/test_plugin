  import 'package:test_plugin/test_plugin.dart';
  import 'package:flutter/services.dart';

  class TestPluginApiInvoker implements TestPluginApi {
    MethodChannel _methodChannel = MethodChannel('test_plugin');

    @override
    Future<String> getPlatformVersion() async {
      final Map<String, dynamic> args = {};
      return _methodChannel.invokeMethod<String>('getPlatformVersion', args);
    }

    @override
    Future<List<String>> complicatedMethod(List<String> test) async {
      final Map<String, dynamic> args = {'test': test};
      return _methodChannel.invokeListMethod<String>('complicatedMethod', args);
    }
  }
