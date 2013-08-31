//
//  naviViewController.m
//  navi
//
//  Created by apple on 12-8-27.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "naviViewController.h"

@implementation naviViewController

@synthesize firstView;
@synthesize press;

- (void)dealloc
{
    [firstView release];
    [press release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [self setPress:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)pressbutton:(id)sender {
    firstView = [[first alloc]init];
    [self.navigationController pushViewController:firstView animated:YES];
    
}
@end
