import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'plugin_dev_br_platform_interface.dart';

class MethodChannelPluginDevBr extends PluginDevBrPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('plugin_dev_br');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
