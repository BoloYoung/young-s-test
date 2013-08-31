//
//  TableEntry.h
//  SteeringSystem
//
//  Created by apple on 12-8-17.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TableEntry : UIViewController {
    
    UITextField *SchoolName;
    UITextField *ClassName;
    UITextField *Classroom;
    UITextField *NumberOfLesson;
}
@property (nonatomic, retain) IBOutlet UITextField *SchoolName;
@property (nonatomic, retain) IBOutlet UITextField *ClassName;
@property (nonatomic, retain) IBOutlet UITextField *Classroom;
@property (nonatomic, retain) IBOutlet UITextField *NumberOfLesson;

-(IBAction) textFiledReturnEditing:(id)sender;

-(IBAction) backgroundTap:(id)sender;
@end
