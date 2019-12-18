import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_plugin/test_plugin.flutterbuff.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  const MethodChannel channel = MethodChannel('test_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await TestPluginApiInvoker().getPlatformVersion(), '42');
  });
}
