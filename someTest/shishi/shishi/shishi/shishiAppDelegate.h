//
//  shishiAppDelegate.h
//  shishi
//
//  Created by apple on 12-9-29.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class shishiViewController;

@interface shishiAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet shishiViewController *viewController;

@end
