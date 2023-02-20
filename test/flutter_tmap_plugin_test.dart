import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tmap_plugin/flutter_tmap_plugin.dart';
import 'package:flutter_tmap_plugin/flutter_tmap_plugin_platform_interface.dart';
import 'package:flutter_tmap_plugin/flutter_tmap_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterTmapPluginPlatform
    with MockPlatformInterfaceMixin
    implements FlutterTmapPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterTmapPluginPlatform initialPlatform = FlutterTmapPluginPlatform.instance;

  test('$MethodChannelFlutterTmapPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterTmapPlugin>());
  });

  test('getPlatformVersion', () async {
    FlutterTmapPlugin flutterTmapPlugin = FlutterTmapPlugin();
    MockFlutterTmapPluginPlatform fakePlatform = MockFlutterTmapPluginPlatform();
    FlutterTmapPluginPlatform.instance = fakePlatform;

    expect(await flutterTmapPlugin.getPlatformVersion(), '42');
  });
}
