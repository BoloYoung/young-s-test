//
//  FirstViewController.h
//  HttpTest
//
//  Created by apple on 12-8-19.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIHTTPRequest.h"
#import "ASIFormDataRequest.h"
#import "CJSONDeserializer.h"

#define HostUrl @"http://192.168.1.246:8080/edusupervisor/j_spring_security_check";

@interface FirstViewController : UIViewController {

    UITextField *UserNameTextField;
    UITextField *PassWordTextField;
    UIButton *LoginButton;
    UILabel *LableShow;
}
@property (nonatomic, retain) IBOutlet UITextField *UserNameTextField;
@property (nonatomic, retain) IBOutlet UITextField *PassWordTextField;
//@property (nonatomic, retain) IBOutlet UIButton *LoginButton;
@property (nonatomic, retain) IBOutlet UILabel *LableShow;

- (void) login:(id)sender;
- (IBAction)loginbutton:(id)sender;
- (void) GetErr:(ASIHTTPRequest *)request;
- (void) GetResult:(ASIHTTPRequest *)request;

@end
