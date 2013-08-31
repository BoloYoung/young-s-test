//
//  SearchView.h
//  SteeringSystem
//
//  Created by apple on 12-8-27.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ModifyView.h"
#import "ResultTableView.h"

@interface SearchView : UIViewController <NSXMLParserDelegate,UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>{
 
    ResultTableView* resultTableView;
    UITextField *date;
    UITextField *classroom;
    UITextField *lessontime;
    UITextField *campus;
    UITextField *supervisorId;
    
    UIView *classroomView;
    UIView *lessontimeView;
    UIView *dataPickerView;
    UIView *searchView;
    UIView *campusView;
    
    UITableView *classroomTableView;
    UITableView *lessontimeTableView;
    UITableView *campusTableView;
    UIDatePicker *datePicker;
    UIToolbar *toolBar;
    
    NSArray *classroomList;
    NSArray *lessontimeList;
    NSArray *campusList;
    UIButton *classroomButton;
    
}
@property(retain, nonatomic)ResultTableView *resultTableView;
-(IBAction) textFiledReturnEditing:(id)sender;
-(IBAction) backgroundTap:(id)sender;
@property (nonatomic, retain) IBOutlet UITextField *date;
@property (nonatomic, retain) IBOutlet UITextField *classroom;
@property (nonatomic, retain) IBOutlet UITextField *lessontime;
@property (nonatomic, retain) IBOutlet UITextField *campus;
@property (nonatomic, retain) IBOutlet UITextField *supervisorId;



@property (nonatomic, retain) IBOutlet UIView *classroomView;
@property (nonatomic, retain) IBOutlet UIView *lessontimeView;
@property (nonatomic, retain) IBOutlet UIView *dataPickerView;
@property (nonatomic, retain) IBOutlet UIView *searchView;

@property (nonatomic, retain) IBOutlet UIView *campusView;



@property (nonatomic, retain) IBOutlet UITableView *classroomTableView;
@property (nonatomic, retain) IBOutlet UITableView *lessontimeTableView;
@property (nonatomic, retain) IBOutlet UITableView *campusTableView;



@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, retain) IBOutlet UIToolbar *toolBar;


@property (nonatomic, retain) NSArray *classroomList;
@property (nonatomic, retain) NSArray *lessontimeList;
@property (nonatomic, retain) NSArray *campusList;


- (IBAction)classroomButton:(id)sender;
- (IBAction)lessontimeButton:(id)sender;
- (IBAction)datePickerButton:(id)sender;
- (IBAction)doneButton:(id)sender;
- (IBAction)campusButton:(id)sender;


@end
