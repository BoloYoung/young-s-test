//
//  RootViewController.h
//  NavigationTest
//
//  Created by apple on 12-8-27.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstView.h"

@interface RootViewController : UITableViewController {

    FirstView *firstView;
}
@property (retain, nonatomic)FirstView *firstView;
- (IBAction)ButtonPress:(id)sender;


@end
