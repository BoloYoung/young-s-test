//
//  BaseSubmitView.m
//  SteeringSystem
//
//  Created by apple on 12-10-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "BaseSubmitView.h"


@implementation BaseSubmitView

@synthesize  submitView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"督导信息录入";
        UIBarButtonItem *SearchButton = [[UIBarButtonItem alloc]initWithTitle:@"下一步" style:UIBarButtonItemStyleBordered target:self action:@selector(SearchMessage)];
        UIBarButtonItem *BackButton = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStyleBordered target:self action:@selector(ReturnToMain)];
        self.navigationItem.rightBarButtonItem = SearchButton;
        self.navigationItem.leftBarButtonItem = BackButton;
    }
    return self;
}

- (void)dealloc
{
    [submitView release];
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
    [self setSubmitView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)SearchMessage
{
    submitView = [[SubmitView alloc]init];
    [self.navigationController pushViewController:submitView animated:YES];
}

@end
