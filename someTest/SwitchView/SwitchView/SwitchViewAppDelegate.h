//
//  SwitchViewAppDelegate.h
//  SwitchView
//
//  Created by apple on 12-8-13.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SwitchViewController;

@interface SwitchViewAppDelegate : NSObject <UIApplicationDelegate> {

    IBOutlet UIWindow *window;
    IBOutlet SwitchViewController *switchViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) SwitchViewController *switchViewController;

@end
