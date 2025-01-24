import 'package:flutter_test/flutter_test.dart';
import 'package:zing_tools/zing_tools.dart';
import 'package:zing_tools/zing_tools_platform_interface.dart';
import 'package:zing_tools/zing_tools_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockZingToolsPlatform
    with MockPlatformInterfaceMixin
    implements ZingToolsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ZingToolsPlatform initialPlatform = ZingToolsPlatform.instance;

  test('$MethodChannelZingTools is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelZingTools>());
  });

  test('getPlatformVersion', () async {
    ZingTools zingToolsPlugin = ZingTools();
    MockZingToolsPlatform fakePlatform = MockZingToolsPlatform();
    ZingToolsPlatform.instance = fakePlatform;

    expect(await zingToolsPlugin.getPlatformVersion(), '42');
  });
}
