//
//  testViewControl.m
//  windoubase
//
//  Created by apple on 12-8-11.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "testViewControl.h"
#import <UIKit/UIKit.h>
#import "AboutViewControl.h"

@implementation testViewControl
//@synthesize bcakView;
@synthesize LoginView;
@synthesize nameTextField;
@synthesize greetLabel;
@synthesize AboutView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [nameTextField release];
    [greetLabel release];
    [AboutView release];
    [LoginView release];
//    [bcakView release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setNameTextField:nil];
    [self setGreetLabel:nil];
    [self setAboutView:nil];
    [self setLoginView:nil];
//    [self setBcakView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)sayhello:(id)sender {
    NSString *nameString = self.nameTextField.text;
    
    
    if (nameString.length == 0){
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"名字不能为空" message:@"请输入名字后，重新点击按钮。" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    
        [alertView show];
        
        [alertView release];
        
        greetLabel.text = @"";
        
        [nameTextField resignFirstResponder];
        
        return;
    }
    
    if (nameString.length > 16) {
        nameString = [nameString substringToIndex:16];
    }  
    
    NSString *greeting = [NSString stringWithFormat:@"Hello,%@!",nameString];
    greetLabel.text = greeting;
    
    [nameTextField resignFirstResponder];
}

- (IBAction)showAbout:(id)sender {
//    AboutViewControl *aboutView = [[AboutViewControl alloc]init];
//    
//    [aboutView presentModalViewController:aboutView animated:YES];
//    [aboutView release];
//    [self dismissModalViewControllerAnimated:YES];
//    [self.view addSubview:AboutView];
   // [AboutView bringSubviewToFront:AboutView];
    CGRect ViewRect = CGRectMake(10, 10, 100, 100);
    UIView *newView = [[UIView alloc]initWithFrame:ViewRect];
    [self.view addSubview:newView];
//    [newView setBackgroundColor:rand]
    
}

- (IBAction)backView:(id)sender {

    [self.LoginView removeFromSuperview];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (nameTextField == textField) {
        
        [nameTextField resignFirstResponder];
        
    }
    
    return YES;
    
}

@end
