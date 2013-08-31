//
//  TabBarViewController.m
//  SteeringSystem
//
//  Created by apple on 12-8-21.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "TabBarViewController.h"
#import "SteeringSystemAppDelegate.h"



@implementation TabBarViewController

@synthesize uploadItem;
//@synthesize searchItem;

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
//    [searchItem release];
    [uploadItem release];
    [super dealloc];
}

//- (void)change
//{
//    uploadView.OtherSituation.text = teacherView.Teacher.text;
//}

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
    uploadItem = [[UpLoadItemViewController alloc]init];
//    searchItem = [[SearchItemViewController alloc]init];
    
//    self.viewControllers = [NSArray arrayWithObjects:uploadItem,searchItem, nil];
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



@end
