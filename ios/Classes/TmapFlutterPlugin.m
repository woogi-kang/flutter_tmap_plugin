#import "TmapFlutterPlugin.h"
#if __has_include(<tmap_flutter/tmap_flutter-Swift.h>)
#import <tmap_flutter/tmap_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "tmap_flutter-Swift.h"
#endif

@implementation TmapFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTmapFlutterPlugin registerWithRegistrar:registrar];
}
@end
