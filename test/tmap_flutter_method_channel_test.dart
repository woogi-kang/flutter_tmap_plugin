import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmap_flutter/tmap_flutter_method_channel.dart';

void main() {
  MethodChannelTmapFlutter platform = MethodChannelTmapFlutter();
  const MethodChannel channel = MethodChannel('tmap_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
