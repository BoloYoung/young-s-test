//
//  DisciplineSituationView.m
//  SteeringSystem
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "DisciplineSituationView.h"


@implementation DisciplineSituationView
@synthesize FoodEat;
@synthesize FoodEatComment;
@synthesize PlayCellPhone;
@synthesize PlayCellPhoneComment;
@synthesize SleepSpeak;
@synthesize SleepSpeakComment;
@synthesize SlipperShorts;
@synthesize SlipperShortsComment;
@synthesize Comment;

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
    [FoodEat release];
    [FoodEatComment release];
    [PlayCellPhone release];
    [PlayCellPhoneComment release];
    [SleepSpeak release];
    [SleepSpeakComment release];
    [SlipperShorts release];
    [SlipperShortsComment release];
    [Comment release];
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
    [self setFoodEat:nil];
    [self setFoodEatComment:nil];
    [self setPlayCellPhone:nil];
    [self setPlayCellPhoneComment:nil];
    [self setSleepSpeak:nil];
    [self setSleepSpeakComment:nil];
    [self setSlipperShorts:nil];
    [self setSlipperShortsComment:nil];
    [self setComment:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(IBAction) textFiledReturnEditing:(id)sender
{
    [sender resignFirstResponder];

}
-(IBAction) backgroundTap:(id)sender
{
    [Comment resignFirstResponder];
    [FoodEat resignFirstResponder];
    [FoodEatComment resignFirstResponder];
    [PlayCellPhone resignFirstResponder];
    [PlayCellPhoneComment resignFirstResponder];
    [SleepSpeak resignFirstResponder];
    [SleepSpeakComment resignFirstResponder];
    [SlipperShorts resignFirstResponder];
    [SlipperShortsComment resignFirstResponder];
}
@end
