//
//  BaseSubmitView.h
//  SteeringSystem
//
//  Created by apple on 12-10-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchView.h"
#import "SubmitView.h"

@interface BaseSubmitView : SearchView {
    
    SubmitView* submitView;
}
@property (retain, nonatomic) SubmitView* submitView;

@end
