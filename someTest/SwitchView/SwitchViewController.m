//
//  SwitchViewController.m
//  SwitchView
//
//  Created by apple on 12-8-13.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "SwitchViewController.h"
#import "YellowViewController.h"
#import "BlueViewController.h"

@implementation SwitchViewController
@synthesize yellowViewController;
@synthesize blueViewController;


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
    [yellowViewController release];
    [blueViewController release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    if (self.blueViewController.view.superview == nil) {
        self.blueViewController = nil;
    }
    else
        self.yellowViewController = nil;
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
    BlueViewController *blueController = 
    [[BlueViewController alloc]initWithNibName:@"BlueView" bundle:nil];
    self.blueViewController = blueController;
    [self.view insertSubview:blueController.view atIndex:0];
    [blueController release];
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

-(IBAction)switchViews:(id)sender
{
    [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    if (self.yellowViewController.view.superview == nil) {
        if (self.yellowViewController == nil) {
            YellowViewController *yellowController = 
            [[YellowViewController alloc]initWithNibName:@"YellowView" bundle:nil];
            self.yellowViewController = yellowController;
            [yellowController release];
        }
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp
                               forView:self.view cache:YES];
        [blueViewController viewWillAppear:YES];
        [yellowViewController viewWillDisappear:YES];
        [blueViewController.view removeFromSuperview];
        [self.view  insertSubview:yellowViewController.view atIndex:0];
        [yellowViewController viewDidDisappear:YES];
        [blueViewController viewDidAppear:YES];
    }
    else
    { 
        if (self.blueViewController == nil)
        {
            BlueViewController *blueController = 
            [[BlueViewController alloc]initWithNibName:@"BlueView"
                                                bundle:nil];
            self.blueViewController = blueController;
          //  [self.view insertSubview:blueController.view atIndex:0];
            [blueController release];        
    
        }
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft
                           forView:self.view cache:YES];
        [yellowViewController viewWillAppear:YES];
        [blueViewController viewWillDisappear:YES];
        [yellowViewController.view removeFromSuperview];
        [self.view insertSubview:blueViewController.view atIndex:0];
        [yellowViewController viewDidAppear:YES];
        [blueViewController viewDidDisappear:YES];
    }
    [UIView commitAnimations];
}
    

@end
