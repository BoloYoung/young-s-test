//
//  RaidersAppDelegate.h
//  Raiders
//
//  Created by apple on 13-1-22.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RaidersViewController;

@interface RaidersAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet RaidersViewController *viewController;

@end
