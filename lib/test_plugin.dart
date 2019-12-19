import 'package:flutterbuff_annotation/flutterbuff_api.dart';

@FlutterbuffApi(
  channelName: 'test_plugin',
  clients: <Language>[Language.dart],
  servers: <Language>[
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
