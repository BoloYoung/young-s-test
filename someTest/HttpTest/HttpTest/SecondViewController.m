//
//  SecondViewController.m
//  HttpTest
//
//  Created by apple on 12-8-19.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"


@implementation SecondViewController
@synthesize UserNameTextField;
@synthesize PassWordTextField;

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload
{
    [self setUserNameTextField:nil];
    [self setPassWordTextField:nil];
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc
{
    [UserNameTextField release];
    [PassWordTextField release];
    [super dealloc];
}

- (IBAction)LoginButton:(id)sender {
    NSString *authString = [ NSString stringWithFormat:@"%@:%@" , UserNameTextField.text,PassWordTextField.text];
    NSData *authData = [ authString dataUsingEncoding:NSUTF8StringEncoding ];
    NSString *authValue = [NSString stringWithFormat:@"Basic %@", [authData description]];
    
    NSURL *url = [ NSURL URLWithString: @"http://192.168.1.246:8080/edusupervisor" ];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    [request setHTTPMethod:@"Get"];
    [request setValue:authValue forHTTPHeaderField:@"Authorization"];
    
    NSURLResponse *response;
    NSError *error;
    
    [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    [request release];
    
    NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
    
    int statusCode = [httpResponse statusCode];
    
    NSLog(@"status code = %d",statusCode);
    
    NSString *alertTitle,*alertMassage;
    
    if (statusCode != 200){
        alertTitle = @"帐号或密码错误";
        alertMassage = @"请正确输入帐号和密码！";
    } else {
        alertTitle = @"";
        alertMassage = @"登录成功";
        
    }
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:alertTitle message:alertMassage delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
    [alert release];
    
    
                           
}
@end
