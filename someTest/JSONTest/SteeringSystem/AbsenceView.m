//
//  AbsenceView.m
//  SteeringSystem
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "AbsenceView.h"


@implementation AbsenceView
@synthesize AbsentNumber;
@synthesize LateLeaveEarly;
@synthesize LateLeaveEarlyComment;
@synthesize Truant;
@synthesize TruantComment;
@synthesize Vacate;
@synthesize VacateComment;

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
    [AbsentNumber release];
    [LateLeaveEarly release];
    [LateLeaveEarlyComment release];
    [Truant release];
    [TruantComment release];
    [Vacate release];
    [VacateComment release];
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
    [self setAbsentNumber:nil];
    [self setLateLeaveEarly:nil];
    [self setLateLeaveEarlyComment:nil];
    [self setTruant:nil];
    [self setTruantComment:nil];
    [self setVacate:nil];
    [self setVacateComment:nil];
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
    [AbsentNumber resignFirstResponder];
    [LateLeaveEarly resignFirstResponder];
    [LateLeaveEarlyComment resignFirstResponder];
    [Truant resignFirstResponder];
    [TruantComment resignFirstResponder];
    [Vacate resignFirstResponder];
    [VacateComment resignFirstResponder];
}
@end
