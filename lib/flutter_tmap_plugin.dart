
import 'flutter_tmap_plugin_platform_interface.dart';

class FlutterTmapPlugin {
  Future<String?> getPlatformVersion() {
    return FlutterTmapPluginPlatform.instance.getPlatformVersion();
  }

  Future<String?> initSDK() {
    return FlutterTmapPluginPlatform.instance.initSDK();
  }
}
