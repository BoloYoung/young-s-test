//
//  AbsenceView.h
//  SteeringSystem
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AbsenceView : UIViewController {
    
    UITextField *AbsentNumber;
    UITextField *LateLeaveEarly;
    UITextField *LateLeaveEarlyComment;
    UITextField *Truant;
    UITextField *TruantComment;
    UITextField *Vacate;
    UITextField *VacateComment;
}
@property (nonatomic, retain) IBOutlet UITextField *AbsentNumber;

@property (nonatomic, retain) IBOutlet UITextField *LateLeaveEarly;
@property (nonatomic, retain) IBOutlet UITextField *LateLeaveEarlyComment;
@property (nonatomic, retain) IBOutlet UITextField *Truant;
@property (nonatomic, retain) IBOutlet UITextField *TruantComment;
@property (nonatomic, retain) IBOutlet UITextField *Vacate;
@property (nonatomic, retain) IBOutlet UITextField *VacateComment;




-(IBAction) textFiledReturnEditing:(id)sender;
-(IBAction) backgroundTap:(id)sender;






@end
