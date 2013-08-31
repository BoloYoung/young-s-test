//
//  FileWriteAndReadViewController.h
//  FileWriteAndRead
//
//  Created by apple on 12-8-14.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FileWriteAndReadViewController : UIViewController <UITextFieldDelegate> {
    
    UITextField *UserNameTextField;
    UITextField *PassWordTextField;
    UILabel *UserNameShowLabel;
    UILabel *PassWordShowLabel;
    UISwitch *SwitchButton;
}
@property (nonatomic, retain) IBOutlet UITextField *UserNameTextField;
@property (nonatomic, retain) IBOutlet UITextField *PassWordTextField;
@property (nonatomic, retain) IBOutlet UILabel *UserNameShowLabel;
@property (nonatomic, retain) IBOutlet UILabel *PassWordShowLabel;
@property (nonatomic, retain) IBOutlet UISwitch *SwitchButton;

- (IBAction)ButtonLogin:(id)sender;
- (IBAction)ShowUNAndPS:(id)sender;


@end
