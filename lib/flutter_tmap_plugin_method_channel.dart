import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_tmap_plugin_platform_interface.dart';

/// An implementation of [FlutterTmapPluginPlatform] that uses method channels.
class MethodChannelFlutterTmapPlugin extends FlutterTmapPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_tmap_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
