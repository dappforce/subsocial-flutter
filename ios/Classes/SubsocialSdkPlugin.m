#import "SubsocialSdkPlugin.h"
#if __has_include(<subsocial_sdk/subsocial_sdk-Swift.h>)
#import <subsocial_sdk/subsocial_sdk-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "subsocial_sdk-Swift.h"
#endif

@implementation SubsocialSdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSubsocialSdkPlugin registerWithRegistrar:registrar];
}
@end
