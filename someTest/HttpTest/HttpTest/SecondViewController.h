//
//  SecondViewController.h
//  HttpTest
//
//  Created by apple on 12-8-19.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIHTTPRequest.h"
#import "ASIFormDataRequest.h"
#import "CJSONDeserializer.h"

#define HostUrl @"http://192.168.1.246:8080/edusupervisor";

@interface SecondViewController : UIViewController {
    
    UITextField *UserNameTextField;
    UITextField *PassWordTextField;
}
@property (nonatomic, retain) IBOutlet UITextField *UserNameTextField;
@property (nonatomic, retain) IBOutlet UITextField *PassWordTextField;
- (IBAction)LoginButton:(id)sender;

@end
