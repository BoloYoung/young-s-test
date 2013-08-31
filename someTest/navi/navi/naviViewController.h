//
//  naviViewController.h
//  navi
//
//  Created by apple on 12-8-27.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "first.h"

@interface naviViewController : UIViewController {
    first *firstView;
    UIButton *press;
}

@property (retain, nonatomic) first *firstView;
@property (nonatomic, retain) IBOutlet UIButton *press;
- (IBAction)pressbutton:(id)sender;

@end
