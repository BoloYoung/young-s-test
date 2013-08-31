//
//  MoreView.m
//  SteeringSystem
//
//  Created by apple on 12-8-17.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "MoreView.h"


@implementation MoreView
@synthesize NumberOfPeopleShouldArrive;
@synthesize NumberOfPeopleInFact;
@synthesize Sleep;
@synthesize Desert;
@synthesize NonAttendance;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"More";
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [NumberOfPeopleShouldArrive release];
    [NumberOfPeopleInFact release];
    [Sleep release];
    [Desert release];
    [NonAttendance release];
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
    [self setNumberOfPeopleShouldArrive:nil];
    [self setNumberOfPeopleInFact:nil];
    [self setSleep:nil];
    [self setDesert:nil];
    [self setNonAttendance:nil];
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
    [NumberOfPeopleInFact resignFirstResponder];
    [NumberOfPeopleShouldArrive resignFirstResponder];
    [Sleep resignFirstResponder];
    [Desert resignFirstResponder];
    [NonAttendance resignFirstResponder];
}
@end
