//
//  MainView.h
//  SteeringSystem
//
//  Created by apple on 12-8-15.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "UpLoadItemViewController.h"
//#import "SearchItemViewController.h"
//#import "UpLoadViewController.h"
#import "SearchView.h"
#import "SubmitView.h"
#import "BaseSubmitView.h"


@interface MainView : UIViewController {
        
    
    SearchView *searchView;
//    SubmitView *submitView;
    BaseSubmitView *baseSubmitView;
    

}
@property (retain, nonatomic)SearchView *searchView;
//@property (retain, nonatomic)SubmitView *submitView;
@property (retain, nonatomic)BaseSubmitView *baseSubmitView;

- (IBAction)UploadSelectPress:(id)sender;
- (IBAction)ModifySelectPress:(id)sender;


@end
