import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_dev_br/plugin_dev_br.dart';
import 'package:plugin_dev_br/plugin_dev_br_platform_interface.dart';
import 'package:plugin_dev_br/plugin_dev_br_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPluginDevBrPlatform
    with MockPlatformInterfaceMixin
    implements PluginDevBrPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PluginDevBrPlatform initialPlatform = PluginDevBrPlatform.instance;

  test('$MethodChannelPluginDevBr is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPluginDevBr>());
  });

  test('getPlatformVersion', () async {
    PluginDevBr pluginDevBrPlugin = PluginDevBr();
    MockPluginDevBrPlatform fakePlatform = MockPluginDevBrPlatform();
    PluginDevBrPlatform.instance = fakePlatform;

    expect(await pluginDevBrPlugin.getPlatformVersion(), '42');
  });
}
