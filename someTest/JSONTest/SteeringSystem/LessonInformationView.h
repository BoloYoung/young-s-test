//
//  LessonInformationView.h
//  SteeringSystem
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LessonInformationView : UIViewController {
    
    UITextField *StudyPlace;
    UITextField *SchoolTime;
    UITextField *SelectdNumber;
    UITextField *ActualNumber;
}
@property (nonatomic, retain) IBOutlet UITextField *StudyPlace;
@property (nonatomic, retain) IBOutlet UITextField *SchoolTime;
@property (nonatomic, retain) IBOutlet UITextField *SelectdNumber;
@property (nonatomic, retain) IBOutlet UITextField *ActualNumber;


-(IBAction) textFiledReturnEditing:(id)sender;
-(IBAction) backgroundTap:(id)sender;


@end
