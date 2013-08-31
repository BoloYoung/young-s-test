//
//  ModifyView.m
//  SteeringSystem
//
//  Created by apple on 12-8-27.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "ModifyView.h"
#import "SteeringSystemAppDelegate.h"


@implementation ModifyView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"督导信息查询";
        UIBarButtonItem *uploadButton = [[UIBarButtonItem alloc]initWithTitle:@"修改" style:UIBarButtonItemStyleBordered target:self action:@selector(ModifyButton)];
        self.navigationItem.rightBarButtonItem = uploadButton;
    
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (void)ModifyButton
{
//    [self.navigationController popToViewController: animated:<#(BOOL)#>
    [self.navigationController popViewControllerAnimated:YES];
 
}

@end
