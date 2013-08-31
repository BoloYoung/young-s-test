//
//  WelcomeView.m
//  SteeringSystem
//
//  Created by apple on 12-8-17.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "WelcomeView.h"
#import "SteeringSystemAppDelegate.h"


@implementation WelcomeView

@synthesize timer;

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
    [timer release];
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
    NSTimeInterval interval = 1.8;
    timer = [NSTimer scheduledTimerWithTimeInterval:interval target:self selector:@selector(BackgroundTouch:) userInfo:nil repeats:NO];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setTimer:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)BackgroundTouch:(id)sender {
    [[SteeringSystemAppDelegate App].mainViewController initLoginView];
    
}
@end
