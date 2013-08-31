//
//  MainView.m
//  SteeringSystem
//
//  Created by apple on 12-8-15.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "MainView.h"


@implementation MainView

@synthesize searchView;
//@synthesize submitView;
@synthesize baseSubmitView;

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
//    [submitView release];
    [baseSubmitView release];
    [searchView release];
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
     self.title = @"学风督导系统";
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
  
    [self setBaseSubmitView:nil];
    [self setSearchView:nil];
//    [self setSubmitView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)UploadSelectPress:(id)sender {
    
//    uploadView = [[UpLoadItemViewController alloc]init];
//    [self.navigationController pushViewController:uploadView animated:YES];
//    upLoadView = [[UpLoadViewController alloc]init];
//    [self.navigationController pushViewController:upLoadView animated:YES];
//    searchView = [[SearchView alloc]init];
//    [self.navigationController pushViewController:searchView animated:YES];    
//    submitView = [[SubmitView alloc]init];
//    [self.navigationController pushViewController:submitView animated:YES];
    baseSubmitView = [[BaseSubmitView alloc]init];
    [self.navigationController pushViewController:baseSubmitView animated:YES];
    
}

- (IBAction)ModifySelectPress:(id)sender {
    searchView = [[SearchView alloc]init];
    [self.navigationController pushViewController:searchView animated:YES];
}
@end
