#import "FirebasePerformancePlugin.h"

@import FirebasePerformance;

@implementation FirebasePerformancePlugin

- (void)starthttp:(CDVInvokedUrlCommand *)command {
    NSString* message = [command.arguments objectAtIndex:0];

	self.metric =
	[[FIRHttpMetric alloc] initWithURL:[NSURL URLWithString:message]
	HTTPMethod:FIRHTTPMethodGET];

	[self.metric start];


    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


- (void)stophttp:(CDVInvokedUrlCommand *)command {
    NSString* message = [command.arguments objectAtIndex:0];

	self.metric.responseCode = message;
	[self.metric stop];

    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


@end
