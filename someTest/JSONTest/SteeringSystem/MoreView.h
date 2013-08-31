//
//  MoreView.h
//  SteeringSystem
//
//  Created by apple on 12-8-17.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MoreView : UIViewController {
    
    UITextField *NumberOfPeopleShouldArrive;
    UITextField *NumberOfPeopleInFact;
    UITextField *Sleep;
    UITextField *Desert;
    UITextField *NonAttendance;
}
@property (nonatomic, retain) IBOutlet UITextField *NumberOfPeopleShouldArrive;
@property (nonatomic, retain) IBOutlet UITextField *NumberOfPeopleInFact;
@property (nonatomic, retain) IBOutlet UITextField *Sleep;
@property (nonatomic, retain) IBOutlet UITextField *Desert;
@property (nonatomic, retain) IBOutlet UITextField *NonAttendance;

-(IBAction) textFiledReturnEditing:(id)sender;

-(IBAction) backgroundTap:(id)sender;
@end
