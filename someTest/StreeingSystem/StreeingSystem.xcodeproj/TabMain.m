//
//  TabMain.m
//  StreeingSystem
//
//  Created by apple on 12-6-5.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "TabMain.h"
#import "TableEntry.h"
#import "TestView.h"

@implementation TabMain

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        TableEntry *entry = [[TableEntry alloc]init];
        TestView *test = [[TestView alloc]init];
        NSArray *controllers = [[NSArray alloc]initWithObjects: entry, test,nil];
        
        
        self.viewControllers = controllers;
        self.selectedIndex = 0;
//        [(UITabBarItem *)[self.tabBar
        [(UITabBarItem *)[self.tabBar.items objectAtIndex:0]setTitle:@"aa"]; 
        //[(UITabBarItem *)[self.tabBar.items objectAtIndex:0] setImage:[UIImage imageNamed:@"MB_0006_back.png"]];  //30 * 30
        [(UITabBarItem *)[self.tabBar.items objectAtIndex:1] setTitle:@"bb"];
        
        
       //  [(UITabBarItem *)[self.tabBar.items objectAtIndex:1] setImage:[UIImage imageNamed:@"MB_0006_back.png"]];
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

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

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
