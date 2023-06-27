import 'dart:html' as html show window;
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'plugin_dev_br_platform_interface.dart';

class PluginDevBrWeb extends PluginDevBrPlatform {
  PluginDevBrWeb();

  static void registerWith(Registrar registrar) {
    PluginDevBrPlatform.instance = PluginDevBrWeb();
  }

  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }
}
