//
//  SteeringSystemAppDelegate.h
//  SteeringSystem
//
//  Created by apple on 12-8-15.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"
#import "TabBarViewController.h"

@class MainViewController;
@interface SteeringSystemAppDelegate : NSObject <UIApplicationDelegate> {
    IBOutlet UIWindow *window;
    IBOutlet MainViewController *mainViewController;
    //UITabBarController *TabBarViewController;
    IBOutlet TabBarViewController *tabBarViewController;
    UINavigationController *MainNavigation;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MainViewController *mainViewController;
//@property (nonatomic, retain) IBOutlet UITabBarController *TabBarViewController;
@property (nonatomic, retain) IBOutlet TabBarViewController *tabBarViewController;
@property (nonatomic, retain) IBOutlet UINavigationController *MainNavigation;


- (IBAction)LoginItemButton:(id)sender;
+(SteeringSystemAppDelegate *)App;

@end
