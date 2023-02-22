import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'tmap_flutter_method_channel.dart';

abstract class TmapFlutterPlatform extends PlatformInterface {
  /// Constructs a TmapFlutterPlatform.
  TmapFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static TmapFlutterPlatform _instance = MethodChannelTmapFlutter();

  /// The default instance of [TmapFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelTmapFlutter].
  static TmapFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TmapFlutterPlatform] when
  /// they register themselves.
  static set instance(TmapFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
