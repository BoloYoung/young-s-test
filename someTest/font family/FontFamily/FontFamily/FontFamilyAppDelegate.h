//
//  FontFamilyAppDelegate.h
//  FontFamily
//
//  Created by apple on 13-3-9.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FontFamilyViewController;

@interface FontFamilyAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet FontFamilyViewController *viewController;

@end
