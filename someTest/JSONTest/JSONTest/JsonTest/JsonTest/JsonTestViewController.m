//
//  JsonTestViewController.m
//  JsonTest
//
//  Created by apple on 12-10-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "JsonTestViewController.h"

@implementation JsonTestViewController

@synthesize Survey_Id_Text;
@synthesize course_class_no;
@synthesize absent_num_Text;
@synthesize Label1;
@synthesize Label2;

- (void)dealloc
{
    [Survey_Id_Text release];
    [course_class_no release];
    [absent_num_Text release];
    [JsonChangeBack release];
    [Label1 release];
    [Label2 release];
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
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [self setSurvey_Id_Text:nil];
    [self setCourse_class_no:nil];
    [self setAbsent_num_Text:nil];
    [self setLabel1:nil];
    [self setLabel2:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



- (IBAction)JsonChangeTo:(id)sender {
    
    [Survey_Id_Text resignFirstResponder];
    [course_class_no resignFirstResponder];
    [absent_num_Text resignFirstResponder];
    
    NSMutableDictionary *jsonDic = [NSMutableDictionary dictionary];
    NSMutableDictionary *alert = [NSMutableDictionary dictionary];
//    NSMutableDictionary *aps = [NSMutableDictionary dictionary];
    [alert setObject:Survey_Id_Text.text forKey:@"survey_id"];
    [alert setObject:course_class_no.text forKey:@"course_class_no"];
    [alert setObject:absent_num_Text.text forKey:@"absent_num"];
    [jsonDic setObject:alert forKey:@"alery"];
    NSLog(@"%@",jsonDic);
    NSString *strJson = [alert JSONString];
    NSLog(@"%@",strJson);
    Label1.text = strJson;

}
- (IBAction)JsonChangeBack:(id)sender {
    
    NSDictionary *result = [Label1.text objectFromJSONString];
//    NSLog(@"%@",[[Label1.text objectFromJSONString] class]);
    NSString *str = [result objectForKey:@"survey_id"];
    Label2.text = str;
    
}
@end
