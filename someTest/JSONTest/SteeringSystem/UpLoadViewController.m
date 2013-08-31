//
//  UpLoadViewController.m
//  SteeringSystem
//
//  Created by apple on 12-8-29.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "UpLoadViewController.h"


@implementation UpLoadViewController

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
