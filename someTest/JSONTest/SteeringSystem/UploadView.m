//
//  UploadView.m
//  SteeringSystem
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "UploadView.h"
#import "TabBarViewController.h"
#import "SteeringSystemAppDelegate.h"

@implementation UploadView
@synthesize ShowLabel;
@synthesize OtherSituation;
@synthesize Score;
@synthesize Supervisor;
@synthesize SubmitTime;
@synthesize AmendTime;

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
    [OtherSituation release];
    [Score release];
    [Supervisor release];
    [SubmitTime release];
    [AmendTime release];
    [ShowLabel release];
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
    [self setOtherSituation:nil];
    [self setScore:nil];
    [self setSupervisor:nil];
    [self setSubmitTime:nil];
    [self setAmendTime:nil];
    [self setShowLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction) textFiledReturnEditing:(id)sender
{
    [sender resignFirstResponder];
}

-(IBAction) backgroundTap:(id)sender
{
    [OtherSituation resignFirstResponder];
    [Score resignFirstResponder];
    [Supervisor resignFirstResponder];
    [SubmitTime resignFirstResponder];
    [AmendTime resignFirstResponder];
}

- (IBAction)Upload:(id)sender{
    
    [SteeringSystemAppDelegate App].tabBarViewController.uploadItem.uploadView.OtherSituation.text =  [SteeringSystemAppDelegate App].tabBarViewController.uploadItem.teacherView.Teacher.text;  

    
}

@end
