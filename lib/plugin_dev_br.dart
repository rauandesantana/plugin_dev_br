import 'plugin_dev_br_platform_interface.dart';

class PluginDevBr {
  Future<String?> getPlatformVersion() {
    return PluginDevBrPlatform.instance.getPlatformVersion();
  }
}
