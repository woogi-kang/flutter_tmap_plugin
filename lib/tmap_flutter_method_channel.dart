import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'tmap_flutter_platform_interface.dart';

/// An implementation of [TmapFlutterPlatform] that uses method channels.
class MethodChannelTmapFlutter extends TmapFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('tmap_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
