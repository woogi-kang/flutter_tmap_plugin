import 'package:flutter_test/flutter_test.dart';
import 'package:tmap_flutter/tmap_flutter.dart';
import 'package:tmap_flutter/tmap_flutter_platform_interface.dart';
import 'package:tmap_flutter/tmap_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTmapFlutterPlatform
    with MockPlatformInterfaceMixin
    implements TmapFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TmapFlutterPlatform initialPlatform = TmapFlutterPlatform.instance;

  test('$MethodChannelTmapFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTmapFlutter>());
  });

  test('getPlatformVersion', () async {
    TmapFlutter tmapFlutterPlugin = TmapFlutter();
    MockTmapFlutterPlatform fakePlatform = MockTmapFlutterPlatform();
    TmapFlutterPlatform.instance = fakePlatform;

    expect(await tmapFlutterPlugin.getPlatformVersion(), '42');
  });
}
