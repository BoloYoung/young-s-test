//
//  TimerAndAlertAppDelegate.h
//  TimerAndAlert
//
//  Created by apple on 12-8-30.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TimerAndAlertViewController;

@interface TimerAndAlertAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TimerAndAlertViewController *viewController;

@end
