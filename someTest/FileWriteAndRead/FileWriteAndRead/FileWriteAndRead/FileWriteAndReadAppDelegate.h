//
//  FileWriteAndReadAppDelegate.h
//  FileWriteAndRead
//
//  Created by apple on 12-8-14.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FileWriteAndReadViewController;

@interface FileWriteAndReadAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet FileWriteAndReadViewController *viewController;

@end
