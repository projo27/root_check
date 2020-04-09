#import "RootCheckPlugin.h"
#if __has_include(<root_check/root_check-Swift.h>)
#import <root_check/root_check-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "root_check-Swift.h"
#endif

@implementation RootCheckPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRootCheckPlugin registerWithRegistrar:registrar];
}
@end
