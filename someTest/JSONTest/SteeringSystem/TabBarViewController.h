//
//  TabBarViewController.h
//  SteeringSystem
//
//  Created by apple on 12-8-21.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "UpLoadItemViewController.h"
//#import "SearchItemViewController.h"


@interface TabBarViewController : UITabBarController {
    UpLoadItemViewController *uploadItem;
 //   SearchItemViewController *searchItem;
}

@property (retain, nonatomic) UpLoadItemViewController *uploadItem;
//@property (retain, nonatomic) SearchItemViewController *searchItem;


//- (void)change;

@end
