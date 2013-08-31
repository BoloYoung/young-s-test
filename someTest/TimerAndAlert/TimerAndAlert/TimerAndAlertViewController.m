//
//  TimerAndAlertViewController.m
//  TimerAndAlert
//
//  Created by apple on 12-8-30.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "TimerAndAlertViewController.h"

@implementation TimerAndAlertViewController
@synthesize timer;
@synthesize ShowLabel;

- (void)dealloc
{
    [ShowLabel release];
    [timer release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    timer = [NSTimer scheduledTimerWithTimeInterval:2.0f target:self selector:@selector(buttonPress:) userInfo:nil repeats:YES];
  //  [timer fire];
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [self setShowLabel:nil];
    [self setTimer:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}



- (void)ShowAlert
{   
    int static count = 0;
    count+=1;
    if (count == 2) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"测试" message:@"貌似得佐" delegate:self cancelButtonTitle:@"否" otherButtonTitles:@"是",nil];
        [alert show];
        ShowLabel.text = [alert buttonTitleAtIndex:1];
        [timer invalidate];
        [alert release];
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)buttonPress:(id)sender {
//    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"测试" message:@"貌似得佐" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
//    [alert show];
//    [alert release];
    timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(ShowAlert) userInfo:nil repeats:NO];
    [timer fire];

}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0) {
        ShowLabel.text = @"Oh,yeah~";
    }  
    else if (buttonIndex == 1){
    
        ShowLabel.text = @"Oh,No~~!";
    }
    
    
    
    ;
}





@end
