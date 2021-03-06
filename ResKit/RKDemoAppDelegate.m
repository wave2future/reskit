//
//	RKDemoAppDelegate.m
//	ResKit
//
//	Created by Jacob Bandes-Storch on 12/24/09.
//	Copyright 2009 Jacob Bandes-Storch. All rights reserved.
//

#import "RKDemoAppDelegate.h"
#import "RKWindowManager.h"

@implementation RKDemoAppDelegate

@synthesize window, mainViewController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
	// Standard application loading:
	[window makeKeyAndVisible]; // Load window
	[window addSubview:mainViewController.view]; // Show main view controller
	
	// Initialize ResKit
	[[RKWindowManager sharedManager] initialize];
	[RKWindowManager sharedManager].simulatedSize = CGSizeMake(800, 600);
	[RKWindowManager sharedManager].scaleFactor = 0.5;
}

- (void)dealloc {
	[window release];
	[super dealloc];
}

@end
