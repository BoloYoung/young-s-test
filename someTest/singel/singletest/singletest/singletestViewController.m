//
//  singletestViewController.m
//  singletest
//
//  Created by apple on 12-8-11.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "singletestViewController.h"

@implementation singletestViewController
@synthesize scrollView;
@synthesize pageControl;

- (void)dealloc
{
    [scrollView release];
    [pageControl release];
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
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [self setScrollView:nil];
    [self setPageControl:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (void)viewDidAppear:(BOOL)animated {

    [super viewDidAppear:animated];

    UIViewController *viewController = [self.childViewControllers objectAtIndex:self.pageControl.currentPage];

    if (viewController.view.superview != nil) {
        
        [viewController viewDidAppear:animated];
        
    }
    
}



- (void)viewWillDisappear:(BOOL)animated {
    
    UIViewController *viewController = [self.childViewControllers objectAtIndex:self.pageControl.currentPage];
    
    if (viewController.view.superview != nil) {
        
        [viewController viewWillDisappear:animated];
        
    }
    
    [super viewWillDisappear:animated];
    
}



- (void)viewDidDisappear:(BOOL)animated {
    
    UIViewController *viewController = [self.childViewControllers objectAtIndex:self.pageControl.currentPage];

    if (viewController.view.superview != nil) {
        
        [viewController viewDidDisappear:animated];
        
    }
    
    [super viewDidDisappear:animated];
    
}

@end
