//
//  SwitchViewController.h
//  SwitchView
//
//  Created by apple on 12-8-13.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YellowViewController;
@class BlueViewController;

@interface SwitchViewController : UIViewController {
    YellowViewController *yellowViewController;
    BlueViewController *blueViewController;
}
@property(retain, nonatomic) YellowViewController *yellowViewController;
@property(retain, nonatomic) BlueViewController *blueViewController;

-(IBAction)switchViews:(id)sender;

@end
