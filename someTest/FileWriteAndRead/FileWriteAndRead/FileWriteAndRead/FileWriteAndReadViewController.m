//
//  FileWriteAndReadViewController.m
//  FileWriteAndRead
//
//  Created by apple on 12-8-14.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "FileWriteAndReadViewController.h"

@implementation FileWriteAndReadViewController
@synthesize SwitchButton;
@synthesize UserNameTextField;
@synthesize PassWordTextField;
@synthesize UserNameShowLabel;
@synthesize PassWordShowLabel;


- (NSString *)dataFilePath
{
    // NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDirectory, YES)objectAtIndex:0];
    // NSString *filepath = [path stringByAppendingPathComponent:@"UserNameAndPassWord"]
    
    
    //获取document路径,找目录
    NSArray *directoryPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [directoryPaths objectAtIndex:0];
    
    //记录文件全名以及路径的字符串
    NSString *filePath = [documentDirectory stringByAppendingPathComponent:@"UserNameAndPassWord"];
    return filePath;
}

- (void)dealloc
{
    [UserNameTextField release];
    [PassWordTextField release];
    [UserNameShowLabel release];
    [PassWordShowLabel release];
    [SwitchButton release];
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
    [super viewDidLoad];
    [PassWordTextField setSecureTextEntry:YES];
    NSString *path = [self dataFilePath];
    if ([[NSFileManager defaultManager]fileExistsAtPath:path]) 
    {
        NSArray *array = [[NSArray alloc]initWithContentsOfFile:path];
        UserNameTextField.text = [array objectAtIndex:0];
        NSString *Remember = [array objectAtIndex:2];
        if ([Remember isEqualToString:@"YES"]) {
            SwitchButton.on = YES;
            PassWordTextField.text = [array objectAtIndex:1];
        }
    
    }
}




- (void)viewDidUnload
{
    [self setUserNameTextField:nil];
    [self setPassWordTextField:nil];
    [self setUserNameShowLabel:nil];
    [self setPassWordShowLabel:nil];
    [self setSwitchButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

//- (void)viewDidLoad
//{
//    //    [super viewDidLoad];
//    //    NSString *path = [self dataFilePath];
//    //    if ([NSFileManager defaultManager]fileExistsAtPath:path) {
//    //        NSArray *array = [[NSArray alloca(2)]init]
//    //    }
//    [super viewDidLoad];
//    [UserNameTextField setSecureTextEntry:YES];
//    
//}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)ButtonLogin:(id)sender {
    
    //创建文件管理器
//    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    //参数 NSDocumentDIrectory 要获取哪种路径
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    //取出需要的路径
//    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    //更改到待操作的目录下
//    [fileManager changeCurrentDirectoryPath:[documentsDirectory stringByExpandingTildeInPath]];
    
    //创建文件
//    [fileManager removeItemAtPath:@"UserNameAndPassWord" error:nil];
//    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"UserNameAndPassWord"];
  
    [UserNameTextField resignFirstResponder];        
    [PassWordTextField resignFirstResponder];
    
    
    //创建文件管理器
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSString *filePath = [self dataFilePath];
    //查找文件，如果不存在，就创建一个文件
    if (![fileManager fileExistsAtPath:filePath]) {
        [fileManager createFileAtPath:filePath contents:nil attributes:nil];
    }
    
    //输入数据  
    NSMutableArray *array = [[NSMutableArray alloc]init];
    NSString *switchButton; 
    if ([SwitchButton isOn])
    { switchButton = @"YES";}
    else
    { switchButton = @"NO";}
    
    [array addObject:UserNameTextField.text];
    [array addObject:PassWordTextField .text];
    [array addObject:switchButton];
    [array writeToFile:filePath atomically:YES];

    
}

- (IBAction)ShowUNAndPS:(id)sender {
    NSString *path = [self dataFilePath];
    if ([[NSFileManager defaultManager]fileExistsAtPath:path]) {
        NSArray *array = [[NSArray alloc]initWithContentsOfFile:path];
        UserNameShowLabel.text = [array objectAtIndex:0];
        PassWordShowLabel.text = [array objectAtIndex:1];
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (UserNameTextField == textField) {
        [UserNameTextField resignFirstResponder];
    }
    if (PassWordTextField == textField) {
        [PassWordTextField resignFirstResponder];
    }
    return YES;
}



@end
