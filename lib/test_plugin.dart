import 'package:auto_channel_builder/annotation/method_channel_api.dart';

@MethodChannelApi(
  channelName: 'test_plugin',
  invokers: <Language>[Language.dart],
  handlers: <Language>[
    Language(
        name: javaName,
        options: JavaOptions(
            basePackageName: 'com.example.test_plugin'))
  ],
)
abstract class TestPluginApi {
  Future<String> getPlatformVersion();
  Future<List<String>> complicatedMethod(List<String> test);
}