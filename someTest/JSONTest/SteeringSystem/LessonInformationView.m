//
//  LessonInformationView.m
//  SteeringSystem
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "LessonInformationView.h"


@implementation LessonInformationView
@synthesize StudyPlace;
@synthesize SchoolTime;
@synthesize SelectdNumber;
@synthesize ActualNumber;

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
    [StudyPlace release];
    [SchoolTime release];
    [SelectdNumber release];
    [ActualNumber release];
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
    [self setStudyPlace:nil];
    [self setSchoolTime:nil];
    [self setSelectdNumber:nil];
    [self setActualNumber:nil];
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
    [StudyPlace resignFirstResponder];
    [SchoolTime resignFirstResponder];
    [SelectdNumber resignFirstResponder];
    [ActualNumber resignFirstResponder];
}
@end
