//
//  ComboBoxTestAppDelegate.h
//  ComboBoxTest
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ComboBoxTestViewController;

@interface ComboBoxTestAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ComboBoxTestViewController *viewController;

@end
