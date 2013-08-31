//
//  LoginViewController.m
//  StreeingSystem
//
//  Created by apple on 12-6-4.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "LoginViewController.h"
#import "StreeingSystemAppDelegate.h"

@implementation LoginViewController


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

- (IBAction)LoginBtnPress:(id)sender {
    NSURL *muUrl=[NSURL URLWithString:@"http://192.168.1.246:8080/edusupervisor/j_spring_security_check"];//建立URL
    NSMutableURLRequest *myRequest=[NSMutableURLRequest requestWithURL:muUrl];//创建一个指向目的网站的请求
    NSString *myBoundary=@"0xKhTmLbOuNdArY";//这个很重要，用于区别输入的域
    NSString *myContent=[NSString stringWithFormat:@"multipart/form-data;boundary=%@",myBoundary];//意思是要提交的是表单数据
    
    [myRequest setValue:myContent forHTTPHeaderField:@"Content-type"];//定义内容类型
    
    NSMutableData * body=[NSMutableData data];//这个用于暂存你要提交的数据
    //下面开始增加你的数据了
    
    //我这里假设表单中，有两个字段，一个叫user,一个叫password
    
    //字段与字段之间要用到boundary分开
    
    [body appendData:[[NSString stringWithFormat:@"\n--%@\n",myBoundary] dataUsingEncoding:NSUTF8StringEncoding]];//表示开始
    [body appendData:[[NSString stringWithString:@"Content-Disposition:form-data;name='user'\n\n"] dataUsingEncoding:NSUTF8StringEncoding]];//第一个字段开始，类型于<input type="text" name="user">
    [body appendData:[[NSString stringWithString:@"leve"] dataUsingEncoding:NSUTF8StringEncoding]]; //第一个字段的内容，即leve
    
    [body appendData:[[NSString stringWithFormat:@"\n--%@\n",myBoundary]dataUsingEncoding:NSUTF8StringEncoding]];//字段间区分开，也意味着第一个字段结束
    
    [body appendData:[[NSString stringWithString:@"Content-Disposition:form-data;name='password'\n\n"]dataUsingEncoding:NSUTF8StringEncoding]];//第二个字段开始，<input type="text" name="password">
    [body appendData:[[NSString stringWithString:@"tan"]dataUsingEncoding:NSUTF8StringEncoding]];//第二个字段的内容
    [body appendData:[[NSString stringWithFormat:@"\n--%@--\n",myBoundary]dataUsingEncoding:NSUTF8StringEncoding]];//结束
    
    [myRequest setHTTPMethod:@"POST"];//定义方法为post.所以如果在PHP端接收的话，以$_POST["user"],$_POST["password"]结收数据
    [myRequest setHTTPBody:body];//将内容加载到请求中
    
    NSData *respondse=[NSURLConnection sendSynchronousRequest:myRequest returningResponse:nil error:nil];//创建连接
    
    NSString * myGet=[[NSString alloc] initWithData:respondse encoding:NSUTF8StringEncoding];//接收数据
    
    [[StreeingSystemAppDelegate App].m_pRootViewController initMainView];
}
@end
