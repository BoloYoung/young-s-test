//
//  LoginView.h
//  SteeringSystem
//
//  Created by apple on 12-8-15.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIHTTPRequest.h"
#import "ASIFormDataRequest.h"
#import "CJSONDeserializer.h"

#define HostUrl @"http://192.168.1.246:8080/edusupervisor/j_spring_security_check";
 

@interface LoginView : UIViewController <UITextFieldDelegate> {
    
    UITextField *PassWordTextField;
    UISwitch *SwitchButton;
    UITextField *UserNameTextField;
}
@property (nonatomic, retain) IBOutlet UITextField *UserNameTextField;
@property (nonatomic, retain) IBOutlet UITextField *PassWordTextField;
@property (nonatomic, retain) IBOutlet UISwitch *SwitchButton;

- (IBAction)ExitApp:(id)sender;
- (IBAction)LoginButton:(id)sender;
- (IBAction)BackGroundTap:(id)sender;

@end
