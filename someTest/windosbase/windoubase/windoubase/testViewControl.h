//
//  testViewControl.h
//  windoubase
//
//  Created by apple on 12-8-11.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface testViewControl : UIViewController <UITextFieldDelegate,UIPopoverControllerDelegate> {
    
    UITextField *nameTextField;
    UILabel *greetLabel;
    UIView *AboutView;
    UIView *LoginView;
}

@property (nonatomic, retain) IBOutlet UIView *LoginView;
@property (nonatomic, retain) IBOutlet UITextField *nameTextField;
@property (nonatomic, retain) IBOutlet UILabel *greetLabel;
@property (nonatomic, retain) IBOutlet UIView *AboutView;

- (IBAction)sayhello:(id)sender;
- (IBAction)showAbout:(id)sender;
- (IBAction)backView:(id)sender;

@end
