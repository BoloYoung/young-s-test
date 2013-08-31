//
//  MainViewController.m
//  SteeringSystem
//
//  Created by apple on 12-8-15.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "SteeringSystemAppDelegate.h"



@implementation MainViewController

@synthesize loginView;
//@synthesize mainView;
@synthesize welcomeView;

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
    [welcomeView release];
    [loginView release];
//    [mainView release];
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
//    LoginView *loginViewWindow = 
//    [[LoginView alloc]initWithNibName:@"LoginView" bundle:nil];
//    loginView = loginViewWindow;
//    [self.view insertSubview:loginView.view atIndex:0];
    //    [loginViewWindow release];
 
    WelcomeView *welcomeViewWindow = [[WelcomeView alloc]initWithNibName:@"WelcomeView" bundle:nil];
    welcomeView = welcomeViewWindow;
    [self.view insertSubview:welcomeView.view atIndex:0];
   // [welcomeViewWindow release];

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

//- (IBAction) switchView:(id)sender
//{
//}

- (void)initMainView
{
//    if (mainView == nil) {
//        mainView = [[MainView alloc]initWithNibName:@"MainView" bundle:nil];
//    }
//    for (NSInteger i = 0; i < [self.view.subviews count]; i++) {
//        UIView *temp = [self.view.subviews objectAtIndex:i];
//        [[self.view.subviews objectAtIndex:i]removeFromSuperview];
//        [temp release];
//    }
//    
//    [UIView beginAnimations:@"View Flip" context:nil];
//    [UIView setAnimationDuration:0.5f];
//    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
   // [self.view insertSubview:mainView.view atIndex:0];
    
    
    [SteeringSystemAppDelegate App].window.rootViewController = [SteeringSystemAppDelegate App].MainNavigation; 
    [[SteeringSystemAppDelegate App].window makeKeyAndVisible];
    [UIView commitAnimations];


}

- (void)initLoginView
{
    if (loginView == nil) {
        loginView = [[LoginView alloc]initWithNibName:@"LoginView" bundle:nil];
    }
    for (NSInteger i = 0; i < [self.view.subviews count]; i++) {
        UIView *temp = [self.view.subviews objectAtIndex:i];
        [[self.view.subviews objectAtIndex:i]removeFromSuperview];
        [temp release];
    }
    
//    CATransition *animation = [CATransition animation];
//    [animation setDuration:0.6f];
//    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
//    [animation setType:kCATransitionFade];
//    [animation setSubtype:kCATransitionFromTop];
//    [self.view.layer addAnimation:animation forKey:@"Reveal" ];

    [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
    [self.view  insertSubview:loginView.view atIndex:0];
    [UIView commitAnimations];
}

@end
