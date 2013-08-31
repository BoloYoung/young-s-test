//
//  FontFamilyViewController.m
//  FontFamily
//
//  Created by apple on 13-3-9.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import "FontFamilyViewController.h"

@implementation FontFamilyViewController
//@synthesize GetFont;
//@synthesize label;
//@synthesize textField;

- (void)dealloc
{
//    [label release];
//    [textField release];
//    [GetFont release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    
    label_ = [[ UILabel alloc ]initWithFrame:CGRectMake(20, 150, 230, 40)];
    label_.text = @"点按钮";
    textField_ = [ [ UITextField alloc ]initWithFrame:CGRectMake(90 , 90 , 200 , 30)];
    textField_.text = @"睇下点";
    textField_.borderStyle = UITextBorderStyleRoundedRect;
    textField_.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    [ self.view addSubview:textField_ ];
    [ self.view addSubview:label_ ];

    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [self setGetFont:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)GetFontFamily:(id)sender {
    
    
    NSString *fontName = [NSString stringWithFormat:@"%@", @"STHeitiSC-Medium"];
    [label_ setFont:[ UIFont fontWithName:fontName  size:17]];
    
    [textField_ setFont:[ UIFont fontWithName:fontName size:18]];
    label_.text = [ NSString stringWithFormat:@"123%@" , fontName];
    textField_.text = [ NSString stringWithFormat:@"123%@" , fontName];

            

//        }
//    }
}
@end
