//
//  ComboBoxTestViewController.m
//  ComboBoxTest
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "ComboBoxTestViewController.h"

@implementation ComboBoxTestViewController

@synthesize comboBox;

- (void)dealloc
{
    [comboBox release];
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
    //if (comboBox == nil) {
        comboBox = [[ComboBoxClass alloc]initWithFrame:CGRectMake(140, 200, 200, 300)];
     
    [comboBox didMoveToSuperview];
    [comboBox didMoveToWindow];
}


- (void)viewDidUnload
{
    comboBox = nil;
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
