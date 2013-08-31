//
//  windoubaseAppDelegate.h
//  windoubase
//
//  Created by apple on 12-8-11.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "testViewControl.h"
#import <UIKit/UIKit.h>
#import "AboutViewControl.h"

@interface windoubaseAppDelegate : NSObject <UIApplicationDelegate> {
    testViewControl *TsviewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet testViewControl *TsviewController;

@end
