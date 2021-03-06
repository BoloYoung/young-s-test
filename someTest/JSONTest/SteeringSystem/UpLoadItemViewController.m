//
//  UpLoadItemViewController.m
//  SteeringSystem
//
//  Created by apple on 12-8-24.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "UpLoadItemViewController.h"


@implementation UpLoadItemViewController

@synthesize teacherView;
@synthesize uploadView;
@synthesize absenceView;
@synthesize disciplineSituationView;
@synthesize lessonInformationView;
@synthesize scrollView;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"督导信息录入";
        UIBarButtonItem *uploadButton = [[UIBarButtonItem alloc]initWithTitle:@"录入" style:UIBarButtonItemStyleBordered target:self action:@selector(uploadMessage)];
        self.navigationItem.rightBarButtonItem = uploadButton;
        UIBarButtonItem *backButton = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStyleBordered target:self action:@selector(ReturnToMain)];
        self.navigationItem.leftBarButtonItem = backButton;
    }
    return self;
}

- (void)dealloc
{
    [scrollView release];
    [teacherView release];
    [lessonInformationView release];
    [absenceView release];
    [disciplineSituationView release];
    [uploadView release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{ 
    scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
    [scrollView setContentSize:CGSizeMake(320, 460*5)];
    teacherView = [[TeacherView alloc]init];
    teacherView.view.frame = CGRectMake(0, 0, 320, 460);
    lessonInformationView = [[LessonInformationView alloc]init];
    lessonInformationView.view.frame = CGRectMake(0, 460*1, 320, 460);
    absenceView = [[AbsenceView alloc]init];
    absenceView.view.frame = CGRectMake(0, 460*2, 320, 460);
    disciplineSituationView = [[DisciplineSituationView alloc]init];
    disciplineSituationView.view.frame = CGRectMake(0, 460*3, 320, 460);
    uploadView = [[UploadView alloc]init];
    uploadView.view.frame = CGRectMake(0, 460*4, 320, 460);
    
    [scrollView addSubview:teacherView.view];
    [scrollView addSubview:lessonInformationView.view];
    [scrollView addSubview:absenceView.view];
    [scrollView addSubview:disciplineSituationView.view];
    [scrollView addSubview:uploadView.view];
    
    [self.view insertSubview:scrollView atIndex:0];
    
    scrollView.scrollEnabled = YES;
    scrollView.scrollsToTop = NO;
    scrollView.alwaysBounceVertical = YES;    
    
    [super viewDidLoad];
}


- (void)viewDidUnload
{

     
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)uploadMessage
{
    [self.navigationController popViewControllerAnimated:YES];

}

- (void)ReturnToMain
{
  	[self.navigationController popViewControllerAnimated:YES];  

}

@end
