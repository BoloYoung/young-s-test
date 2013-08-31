//
//  singletestAppDelegate.h
//  singletest
//
//  Created by apple on 12-8-11.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class singletestViewController;

@interface singletestAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet singletestViewController *viewController;

@end
