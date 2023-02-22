
import 'tmap_flutter_platform_interface.dart';

class TmapFlutter {
  Future<String?> getPlatformVersion() {
    return TmapFlutterPlatform.instance.getPlatformVersion();
  }
}
