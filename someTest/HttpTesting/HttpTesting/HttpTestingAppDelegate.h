//
//  HttpTestingAppDelegate.h
//  HttpTesting
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HttpTestingViewController;

@interface HttpTestingAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet HttpTestingViewController *viewController;

@end
