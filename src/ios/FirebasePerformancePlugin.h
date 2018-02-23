#import <Cordova/CDV.h>

@interface FirebasePerformancePlugin : CDVPlugin

- (void)starthttp:(CDVInvokedUrlCommand*)command;
- (void)stophttp:(CDVInvokedUrlCommand*)command;

@property (nonatomic) FIRHTTPMetric *metric;

@end
