//
//  naviAppDelegate.h
//  navi
//
//  Created by apple on 12-8-27.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class naviViewController;

@interface naviAppDelegate : NSObject <UIApplicationDelegate> {

    UINavigationController *_navigation;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigation;

@property (nonatomic, retain) IBOutlet naviViewController *viewController;

@end
