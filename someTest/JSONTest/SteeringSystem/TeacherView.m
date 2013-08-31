//
//  TeacherView.m
//  SteeringSystem
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "TeacherView.h"


@implementation TeacherView
@synthesize Teacher;
@synthesize StudentInstitude;
@synthesize ClassGroup;
@synthesize TeacherOntime;
@synthesize TeacherOntimeComment;

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
    [Teacher release];
    [StudentInstitude release];
    [ClassGroup release];
    [TeacherOntime release];
    [TeacherOntimeComment release];
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
    [self setTeacher:nil];
    [self setStudentInstitude:nil];
    [self setClassGroup:nil];
    [self setTeacherOntime:nil];
    [self setTeacherOntimeComment:nil];
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
    [Teacher resignFirstResponder];
    [StudentInstitude resignFirstResponder];
    [ClassGroup resignFirstResponder];
    [TeacherOntime resignFirstResponder];
    [TeacherOntimeComment resignFirstResponder];
}
@end
