//
//  StreeingSystemAppDelegate.m
//  StreeingSystem
//
//  Created by apple on 12-6-1.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "StreeingSystemAppDelegate.h"
#import "RootViewController.h"
#import "TableEntry.h"
@implementation StreeingSystemAppDelegate

@synthesize m_pRootViewController;
@synthesize m_pTabMainController;
@synthesize window=_window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    //self.m_pRootViewController = [[RootViewController alloc]
    //self.window =[[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]]autorelease];
    //[self.window addSubview:self.m_pRootViewController.view];
    //self.window.rootViewController = self.m_pRootViewController;
  //  [[NSBundle mainBundle]loadNibNamed:@"TabMainView" owner:self options:nil];
    
    
    self.m_pRootViewController = [[[RootViewController alloc]init]autorelease];
    [self.m_pRootViewController initWelcomeView];
    [self.window addSubview:m_pRootViewController.view];
    
    
    
//    TableEntry *entry = [[TableEntry alloc]init];
//    NSArray *controllerArray = [[NSArray alloc]initWithObjects:entry, nil];
//    UITabBarController *Controller = [[UITabBarController alloc]init];
//    Controller.viewControllers = controllerArray;
//    Controller.selectedIndex = 0;
//    [self.window insertSubview:Controller.view atIndex:0];
    [self.window makeKeyAndVisible];
    return YES;
}

+(StreeingSystemAppDelegate *)App
{
    return (StreeingSystemAppDelegate*)[[UIApplication sharedApplication]delegate];
}

/*+(void)changeRootController:(UIViewController *)Controller
{
    UIViewController* tmp;
    //self.window.rootViewController
}*/

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [m_pRootViewController release];
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [m_pTabMainController release];
    //[m_pTabMainController release];
    [super dealloc];
}

@end
