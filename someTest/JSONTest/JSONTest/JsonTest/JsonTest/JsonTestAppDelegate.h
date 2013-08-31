//
//  JsonTestAppDelegate.h
//  JsonTest
//
//  Created by apple on 12-10-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JsonTestViewController;

@interface JsonTestAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet JsonTestViewController *viewController;

@end
