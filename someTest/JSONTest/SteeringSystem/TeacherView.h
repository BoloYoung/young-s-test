//
//  TeacherView.h
//  SteeringSystem
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TeacherView : UIViewController {
    
    UITextField *Teacher;
    UITextField *StudentInstitude;
    UITextField *ClassGroup;
    UITextField *TeacherOntime;
    UITextField *TeacherOntimeComment;
}
@property (nonatomic, retain) IBOutlet UITextField *Teacher;
@property (nonatomic, retain) IBOutlet UITextField *StudentInstitude;
@property (nonatomic, retain) IBOutlet UITextField *ClassGroup;
@property (nonatomic, retain) IBOutlet UITextField *TeacherOntime;
@property (nonatomic, retain) IBOutlet UITextField *TeacherOntimeComment;

-(IBAction) textFiledReturnEditing:(id)sender;
-(IBAction) backgroundTap:(id)sender;
@end
