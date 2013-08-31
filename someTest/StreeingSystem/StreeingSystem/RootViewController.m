//
//  RootViewController.m
//  StreeingSystem
//
//  Created by apple on 12-6-1.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "WelcomeView.h"
#import "LoginViewController.h"
#import <QuartzCore/QuartzCore.h> 
//#import "TabMainController.h"
#import "TabMain.h"
#import "TableEntry.h"
#import "StreeingSystemAppDelegate.h"
#import "MoreView.h"

@implementation RootViewController

@synthesize m_pWelcomeView;
@synthesize m_loginView;
@synthesize m_pTabMainView;

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

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    /*if(m_pWelcomeView ==nil)
    {
        m_pWelcomeView = [[WelcomeView alloc]initWithNibName:@"WelcomeView" bundle:nil];
        
    }
    for(NSInteger i=0;i<[self.view.subviews count];i++)
        {
            [[self.view.subviews objectAtIndex:i]removeFromSuperview];
        }
    [self.view insertSubview:self.m_pWelcomeView atIndex:0];*/
    //self.
    [super viewDidLoad];
}

- (void)initView
{
   /* if(m_pWelcomeView ==nil)
    {
        m_pWelcomeView = [[WelcomeView alloc]initWithNibName:@"WelcomeView" bundle:nil];
        
    }
    for(NSInteger i=0;i<[self.view.subviews count];i++)
    {
        UIView *tmp = [self.view.subviews objectAtIndex:i];
        
        [[self.view.subviews objectAtIndex:i]removeFromSuperview];
        
        [tmp release];
    }
    [self.view insertSubview:self.m_pWelcomeView.view atIndex:0];*/
    
}

- (void) initWelcomeView
{
    if(m_pWelcomeView ==nil)
    {
        m_pWelcomeView = [[WelcomeView alloc]initWithNibName:@"WelcomeView" bundle:nil];
        
    }
    for(NSInteger i=0;i<[self.view.subviews count];i++)
    {
        UIView *tmp = [self.view.subviews objectAtIndex:i];
        
        [[self.view.subviews objectAtIndex:i]removeFromSuperview];
        
        [tmp release];
    }
//    TableEntry *entry = [[TableEntry alloc]init];
//    NSArray *controllerArray = [[NSArray alloc]initWithObjects:entry, nil];
//    UITabBarController *Controller = [[UITabBarController alloc]init];
//    Controller.viewControllers = controllerArray;
//    Controller.selectedIndex = 0;
//    [self.view insertSubview:Controller.view atIndex:0];
    [self.view insertSubview:self.m_pWelcomeView.view atIndex:0]; 
}

- (void) initLoginView
{
    if(m_loginView==nil)
    {
        m_loginView = [[LoginViewController alloc]initWithNibName:@"LoginViewController" bundle:nil];
    }
    
    
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.6f];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionFade];
    [animation setSubtype:kCATransitionFromTop];
    [self.view.layer addAnimation:animation forKey:@"Reveal" ];
    
    
    for(NSInteger i=0;i<[self.view.subviews count];i++)
    {
        UIView *tmp = [self.view.subviews objectAtIndex:i];
        
        [[self.view.subviews objectAtIndex:i]removeFromSuperview];
        
        [tmp release];
    }
    
    
    [self.view insertSubview:self.m_loginView.view atIndex:0];
    
    [UIView commitAnimations];
}

- (void) initMainView
{
//    if(m_pTabMainView ==nil)
//    {
//        m_pTabMainView = [[TabMain alloc]init];
//    }
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.6f];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionFade];
    [animation setSubtype:kCATransitionFromTop];
    [self.view.layer addAnimation:animation forKey:@"Reveal" ];
   
    
    for(NSInteger i=0;i<[self.view.subviews count];i++)
    {
        UIView *tmp = [self.view.subviews objectAtIndex:i];
        
        [[self.view.subviews objectAtIndex:i]removeFromSuperview];
        
        [tmp release];
    }
    
   //[self.view insertSubview:self.m_pTabMainView.view atIndex:0];
//    StreeingSystemAppDelegate App
    
    
    
    TableEntry *entry = [[TableEntry alloc]init];
    MoreView *more = [[MoreView alloc]init];
    
    NSArray *controllerArray = [[NSArray alloc]initWithObjects:entry,more ,nil];
    UITabBarController *Controller = [[UITabBarController alloc]init];
    Controller.viewControllers = controllerArray;
    Controller.selectedIndex = 0;
//    [self.view insertSubview:Controller.view atIndex:0];
    
    [StreeingSystemAppDelegate App].window.rootViewController = Controller;
    //直接替换其根视图控制器

    //[self.view atIndex:0];
    
    
/*    if(m_mainView==nil)
    {
        m_mainView = [[SteeringSysViewController alloc]initWithNibName:@"SteeringSysViewController" bundle:nil];
    }
   
    
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.6f];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionFade];
    [animation setSubtype:kCATransitionFromTop];
    [self.view.layer addAnimation:animation forKey:@"Reveal" ];
    
    
    for(NSInteger i=0;i<[self.view.subviews count];i++)
    {
        UIView *tmp = [self.view.subviews objectAtIndex:i];
        
        [[self.view.subviews objectAtIndex:i]removeFromSuperview];
        
        [tmp release];
    }
    
    
    [self.view insertSubview:self.m_mainView.view atIndex:0];
    
    [UIView commitAnimations];*/
     
}

- (void)viewDidUnload
{
    [m_loginView release];
    [m_pWelcomeView release];
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
