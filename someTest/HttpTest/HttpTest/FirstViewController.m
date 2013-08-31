//
//  FirstViewController.m
//  HttpTest
//
//  Created by apple on 12-8-19.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

//#import "tooles.h"


@implementation FirstViewController
@synthesize LableShow;
@synthesize UserNameTextField;
@synthesize PassWordTextField;
//@synthesize LoginButton;

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (NSString *) dataFilePath    
{
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDirectory, YES)objectAtIndex:0];
    NSString *filePath = [path stringByAppendingPathComponent:@"UNAndPS"];
    return filePath;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)GetResult:(ASIHTTPRequest *)request
{
    NSData *data = [request responseData];
    NSDictionary *dictionary = [[CJSONDeserializer deserializer]deserializeAsDictionary:data error:nil];
//    <p class = "p1"><span class = "s1"> </span><span class = "s2">//</span>输出接收到得字符串</p><p class = "p2"
    
    NSFileManager *fileManager = [[NSFileManager alloc]init];
    NSString *filePath = [self dataFilePath];
    if (![fileManager fileExistsAtPath:filePath]) {
        [fileManager createFileAtPath:filePath contents:nil attributes:nil];
    }
    [data writeToFile:filePath atomically:YES];
   // [dictionary writeToFile:filePath atomically:YES];
    
    LableShow.text = filePath;
    
//    NSHTTPURLResponse  *httpResponse = ( NSHTTPURLResponse  *)response;
//    
//    int  statusCode = [httpResponse  statusCode ];
//    
//    NSLog ( @"status code = %d" ,statusCode);
//    
//    if  (statusCode !=  200 ) {
//    NSHTTPURLResponse *response;
//    NSError *error;  
//    [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    NSString *alskdj = [[NSString alloc]initWithFormat:@"%d",[request responseStatusCode]];
    LableShow.text = alskdj;
    
    if ([request responseStatusCode] == 200) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:nil message:@"登录成功" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        
        [alert show];
        [alert release];
        return;
    }
    else if ([request responseStatusCode] == 401){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"登录失败" message:@"密码错误！" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        [alert release];
        return;
    }
    else if ([request responseStatusCode] == 404){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"登录失败" message:@"用户名不存在" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        [alert release];
        return;
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"不知名失败" message:@"我也不知到为什么登录不了" delegate:self cancelButtonTitle:@"好吧" otherButtonTitles:nil, nil];
        [alert show];
        [alert release];
        return;
    }
    

}

- (void) GetErr:(ASIHTTPRequest *)request
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"错误" message:@"网络错误，连接不到服务器" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
    [alert show];
    [alert release];

}

- (void) login:(id)sender
{
//    if (UserNameTextField.text == nil || PassWordTextField.text) {
//        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"登录失败" message:@"用户名或密码不可为空！" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//        [alert show];
//        [alert release];
//        return;
//    }
//    [UserNameTextField resignFirstResponder];
//    [PassWordTextField resignFirstResponder];
//    
//    NSString *urlstr = HostUrl;
//    NSURL *myurl = [NSURL URLWithString:urlstr];
//    ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:myurl];
//    
//    [request setPostValue:UserNameTextField.text forKey:@"j_username"];
//    [request setPostValue:PassWordTextField.text forKey:@"j_password"];
//    [request setDelegate:self];
//    [request setDidFinishSelector:@selector(GetResult:)];
//    [request setDidFailSelector:@selector(GetErr:)];
//    [request startAsynchronous];
}

- (IBAction)loginbutton:(id)sender {
    NSString *username = UserNameTextField.text;
    NSString *password = PassWordTextField.text;

    if (username.length == 0||password.length == 0 ) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"登录失败" message:@"用户名或密码不可为空！" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        [alert release];
        return;
    }
    [UserNameTextField resignFirstResponder];
    [PassWordTextField resignFirstResponder];
    
    NSString *urlstr = HostUrl;
    NSURL *myurl = [NSURL URLWithString:urlstr];
    ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:myurl];
    
    
    
    [request setPostValue:PassWordTextField.text forKey:@"j_password"]; 
    [request setPostValue:UserNameTextField.text forKey:@"j_username"];
   
    [request setDelegate:self];
    [request setDidFinishSelector:@selector(GetResult:)];
    [request setDidFailSelector:@selector(GetErr:)];
    [request startAsynchronous];

}

- (void)viewDidUnload
{
    [self setUserNameTextField:nil];
    [self setPassWordTextField:nil];
   // [self setLoginButton:nil];
    [self setLableShow:nil];
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc
{
    [UserNameTextField release];
    [PassWordTextField release];
  //  [LoginButton release];
    [LableShow release];
    [super dealloc];
}

@end
