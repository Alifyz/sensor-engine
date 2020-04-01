#import "SensorEnginePlugin.h"
#if __has_include(<sensor_engine/sensor_engine-Swift.h>)
#import <sensor_engine/sensor_engine-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sensor_engine-Swift.h"
#endif

@implementation SensorEnginePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSensorEnginePlugin registerWithRegistrar:registrar];
}
@end
