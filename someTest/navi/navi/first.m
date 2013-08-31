//
//  first.m
//  navi
//
//  Created by apple on 12-8-27.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "first.h"


@implementation first

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
    self.navigationItem.title = @"车票预订";
	UIBarButtonItem *backButton = [[UIBarButtonItem alloc]initWithTitle:@"返回" 
																  style:UIBarButtonItemStyleBordered 
																 target:self 
																 action:@selector(returnToPreController)];
	self.navigationItem.leftBarButtonItem = backButton;
	[backButton release];

    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
-(void)returnToPreController
{
    //	[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:NO];
	[self.navigationController popViewControllerAnimated:YES];
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

@end
