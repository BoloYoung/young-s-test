//
//  SubmitView.h
//  SteeringSystem
//
//  Created by apple on 12-8-29.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIHTTPRequest.h"
#import "ASIFormDataRequest.h"
#import "SumOfDetailView.h"

#define URL @"http://192.168.1.246:8080/edusupervisor/ClassSituation/submit "

@interface SubmitView : SumOfDetailView <UIAlertViewDelegate> {
    
    UIAlertView *alert;
    UIAlertView *alertWait;
}

@property (retain, nonatomic) UIAlertView *alert;
@property (retain, nonatomic) UIAlertView *alertWait;

@end
