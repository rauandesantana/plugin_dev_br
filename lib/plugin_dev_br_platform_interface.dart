import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'plugin_dev_br_method_channel.dart';

abstract class PluginDevBrPlatform extends PlatformInterface {
  PluginDevBrPlatform() : super(token: _token);

  static final Object _token = Object();
  static PluginDevBrPlatform _instance = MethodChannelPluginDevBr();
  static PluginDevBrPlatform get instance => _instance;

  static set instance(PluginDevBrPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
