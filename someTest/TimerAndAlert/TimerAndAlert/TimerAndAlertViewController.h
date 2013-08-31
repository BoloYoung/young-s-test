//
//  TimerAndAlertViewController.h
//  TimerAndAlert
//
//  Created by apple on 12-8-30.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimerAndAlertViewController : UIViewController <UIAlertViewDelegate>  {
   
    NSTimer *timer;
    UILabel *ShowLabel;
}

@property(retain, nonatomic) NSTimer *timer;
- (IBAction)buttonPress:(id)sender;
@property (nonatomic, retain) IBOutlet UILabel *ShowLabel;


@end
