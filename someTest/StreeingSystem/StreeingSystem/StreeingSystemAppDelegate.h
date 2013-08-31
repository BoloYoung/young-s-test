//
//  StreeingSystemAppDelegate.h
//  StreeingSystem
//
//  Created by apple on 12-6-1.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RootViewController;
@interface StreeingSystemAppDelegate : NSObject <UIApplicationDelegate> {

    IBOutlet RootViewController *m_pRootViewController;
    UITabBarController *m_pTabMainController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RootViewController *m_pRootViewController;
@property (nonatomic, retain) IBOutlet UITabBarController *m_pTabMainController;

+(StreeingSystemAppDelegate *)App;//相当于静态函数，供全局使用，返回应用程序委托。
//+ (void) changeRootController:(UIViewController *)Controller;
@end
