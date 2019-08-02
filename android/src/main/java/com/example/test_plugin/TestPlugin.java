package com.example.test_plugin;

import android.os.Build;

import com.example.test_plugin.proto.TestSchema;
import com.example.test_plugin.proto.TestSchema.PlatformVersionResponse;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

import static com.example.test_plugin.proto.TestSchema.MethodChannelCalls.GET_PLATFORM_VERSION;
import static com.example.test_plugin.proto.TestSchema.MethodChannelName.TEST_PLUGIN;

/** TestPlugin */
public class TestPlugin implements MethodCallHandler {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), TEST_PLUGIN.name());
    channel.setMethodCallHandler(new TestPlugin());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals(GET_PLATFORM_VERSION.name())) {
      PlatformVersionResponse response =
              PlatformVersionResponse.newBuilder()
                      .setOsName("Android")
                      .setOsVersion(Integer.valueOf(Build.VERSION.RELEASE))
                      .build();
      result.success(response.toByteArray());
    } else {
      result.notImplemented();
    }
  }
}
