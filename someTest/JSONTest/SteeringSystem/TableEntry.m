//
//  TableEntry.m
//  SteeringSystem
//
//  Created by apple on 12-8-17.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "TableEntry.h"


@implementation TableEntry
@synthesize SchoolName;
@synthesize ClassName;
@synthesize Classroom;
@synthesize NumberOfLesson;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"录入";
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [SchoolName release];
    [ClassName release];
    [Classroom release];
    [NumberOfLesson release];
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
    [self setSchoolName:nil];
    [self setClassName:nil];
    [self setClassroom:nil];
    [self setNumberOfLesson:nil];
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
    [NumberOfLesson resignFirstResponder];
    [SchoolName resignFirstResponder];
    [ClassName resignFirstResponder];
    [Classroom resignFirstResponder];
}

@end
