package com.example.test_plugin;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import com.example.test_plugin.generated.TestPluginApi;
import com.example.test_plugin.generated.TestPluginApiHandler;

import java.util.ArrayList;
import java.util.HashMap;

/** TestPlugin */
public class TestPlugin implements TestPluginApi {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    new TestPluginApiHandler(new TestPlugin(), registrar);
  }

  @Override
  public String getPlatformVersion() {
    return "Android " + android.os.Build.VERSION.RELEASE;
  }

  @Override
  public ArrayList<String> complicatedMethod(ArrayList<String> test) {
    ArrayList<String> output = new ArrayList<>();
    for (String str : test) {
      output.add("Java transformed: " + str);
    }
    return output;
  }
}
