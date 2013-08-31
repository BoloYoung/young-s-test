//
//  UploadView.h
//  SteeringSystem
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSONKit.h"


@interface UploadView : UIViewController {
    
    UITextField *OtherSituation;
    UITextField *Score;
    UITextField *Supervisor;
    UITextField *SubmitTime;
    UITextField *AmendTime;
    UILabel *ShowLabel;
}
@property (nonatomic, retain) IBOutlet UITextField *OtherSituation;
@property (nonatomic, retain) IBOutlet UITextField *Score;
@property (nonatomic, retain) IBOutlet UITextField *Supervisor;
@property (nonatomic, retain) IBOutlet UITextField *SubmitTime;
@property (nonatomic, retain) IBOutlet UITextField *AmendTime;


-(IBAction) textFiledReturnEditing:(id)sender;
-(IBAction) backgroundTap:(id)sender;
- (IBAction)Upload:(id)sender;
@property (nonatomic, retain) IBOutlet UILabel *ShowLabel;

@end
