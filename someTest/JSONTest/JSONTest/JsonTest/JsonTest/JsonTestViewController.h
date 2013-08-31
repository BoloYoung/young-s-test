//
//  JsonTestViewController.h
//  JsonTest
//
//  Created by apple on 12-10-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClassSituation.h"
#import "JSONKit.h"

@interface JsonTestViewController : UIViewController {
    
    ClassSituation *classSituation;
    UITextField *Survey_Id_Text;
    UITextField *course_class_no;
    UITextField *absent_num_Text;
    UILabel *Label1;
    UILabel *Label2;
    UIButton *JsonChangeBack;
}
@property (nonatomic, retain) IBOutlet UITextField *Survey_Id_Text;
@property (nonatomic, retain) IBOutlet UITextField *course_class_no;
@property (nonatomic, retain) IBOutlet UITextField *absent_num_Text;
@property (nonatomic, retain) IBOutlet UILabel *Label1;
@property (nonatomic, retain) IBOutlet UILabel *Label2;
- (IBAction)JsonChangeTo:(id)sender;
- (IBAction)JsonChangeBack:(id)sender;


@end
