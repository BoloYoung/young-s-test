//
//  WelcomeView.h
//  SteeringSystem
//
//  Created by apple on 12-8-17.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface WelcomeView : UIViewController { 
    
    NSTimer *timer;
}

@property(retain,nonatomic) NSTimer *timer;
- (IBAction)BackgroundTouch:(id)sender;

@end
