// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: JavaAutoChannelGenerator
// **************************************************************************

package com.example.test_plugin.generated;


import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

import java.util.ArrayList;
import java.util.HashMap;

public final class TestPluginApiHandler implements MethodCallHandler {
  private final TestPluginApi impl;

  public TestPluginApiHandler(TestPluginApi impl, Registrar registrar) {
    this.impl = impl;
    MethodChannel channel = new MethodChannel(registrar.messenger(), "test_plugin");
    channel.setMethodCallHandler(this);
  }

  @Override
  public void onMethodCall(MethodCall call, final Result result) {
    switch (call.method) {
      case "getPlatformVersion":
        result.success(impl.getPlatformVersion());
        break;

      case "complicatedMethod":
        result.success(impl.complicatedMethod((ArrayList<String>) call.argument("test")));
        break;

      default:
        result.notImplemented();
        break;
    }
  }
}
