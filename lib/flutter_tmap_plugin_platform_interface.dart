import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_tmap_plugin_method_channel.dart';

abstract class FlutterTmapPluginPlatform extends PlatformInterface {
  /// Constructs a FlutterTmapPluginPlatform.
  FlutterTmapPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterTmapPluginPlatform _instance = MethodChannelFlutterTmapPlugin();

  /// The default instance of [FlutterTmapPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterTmapPlugin].
  static FlutterTmapPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterTmapPluginPlatform] when
  /// they register themselves.
  static set instance(FlutterTmapPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
