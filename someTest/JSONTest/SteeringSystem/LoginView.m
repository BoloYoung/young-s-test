//
//  LoginView.m
//  SteeringSystem
//
//  Created by apple on 12-8-15.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "LoginView.h"
#import "MainView.h"
#import "FirstViewController.h"
#import "SteeringSystemAppDelegate.h"


@implementation LoginView

@synthesize UserNameTextField;
@synthesize PassWordTextField;
@synthesize SwitchButton;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//获取文件名及路径
- (NSString *) dataFilePath    
{
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDirectory, YES)objectAtIndex:0];
    NSString *filePath = [path stringByAppendingPathComponent:@"UNAndPS"];
    return filePath;
}

- (void)dealloc
{
    [super dealloc];
    [PassWordTextField release];
    [UserNameTextField release];
    [SwitchButton release];
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
    NSString *path = [self dataFilePath];
    [PassWordTextField setSecureTextEntry:YES];
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
        NSArray *array = [[NSArray alloc]initWithContentsOfFile:path];
        UserNameTextField.text = [array objectAtIndex:0];
        NSString *AutoPW = [array objectAtIndex:2];
        if ([AutoPW isEqualToString:@"YES"]) {
            PassWordTextField.text = [array objectAtIndex:1];
            SwitchButton.on = YES;
        }
    }
}

- (void)viewDidUnload
{
    [self setPassWordTextField:nil];
    [self setUserNameTextField:nil];
    [self setSwitchButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)ExitApp:(id)sender {
   // exit(0);
}

- (void)GetResult:(ASIHTTPRequest *)request{
    NSString *alertTitle;
    NSString *alertMessage;
    NSString *alertButton;
    UIAlertView *alert;
    [[SteeringSystemAppDelegate App].mainViewController initMainView];
    if (/*[request responseStatusCode] == 403||*/[request responseStatusCode] == 200) {
      //  NSTime *timer = [NSTimer alloc]initWithFireDate:secon interval:<#(NSTimeInterval)#> target:<#(id)#> selector:<#(SEL)#> userInfo:<#(id)#> repeats:<#(BOOL)#>
        alertMessage = @"登录成功！";
        alert = [[UIAlertView alloc]initWithTitle:nil message:alertMessage delegate:self cancelButtonTitle:nil otherButtonTitles:nil, nil];
        [alert show];
        [alert dismissWithClickedButtonIndex:[alert cancelButtonIndex] animated:YES];
        [alert release];
        [[SteeringSystemAppDelegate App].mainViewController initMainView];
    }
    else if ([request responseStatusCode] == 401){
        alertTitle = @"登陆失败";
        alertMessage = @"密码错误！";
        alertButton = @"取消";
        alert = [[UIAlertView alloc]initWithTitle:alertTitle message:alertMessage delegate:self cancelButtonTitle:alertButton otherButtonTitles:nil, nil];
        [alert show];
        [alert release];
        return;
    }
    else if ([request responseStatusCode] == 404){
        alertTitle = @"登陆失败";
        alertMessage = @"用户名不存在";
        alertButton = @"取消";
        alert = [[UIAlertView alloc]initWithTitle:alertTitle message:alertMessage delegate:self cancelButtonTitle:alertButton otherButtonTitles:nil, nil];
        [alert show];
        [alert release];
        return;
    }
    else{
        alertTitle = @"登陆失败";
        alertMessage = @"未知错误";
        alertButton = @"取消";
        alert = [[UIAlertView alloc]initWithTitle:alertTitle message:alertMessage delegate:self cancelButtonTitle:alertButton otherButtonTitles:nil, nil];
        [alert show];
        [alert release];
        return;
    }

    
}

- (void) GetErr:(ASIHTTPRequest *)request{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"错误" message:@"网络错误，连接不到服务器" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
    [alert show];
    [alert release];
}


- (IBAction)LoginButton:(id)sender {

    //收起键盘
    [UserNameTextField resignFirstResponder];
    [PassWordTextField resignFirstResponder];
 
    //判断输入框是否为空
    NSString *UserName = UserNameTextField.text;
    NSString *PassWord = PassWordTextField.text;
    if ( UserName.length == 0 || PassWord.length == 0) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"登录失败" message:@"帐号与密码均不可为空" delegate:nil cancelButtonTitle:@"确  认" otherButtonTitles:nil, nil];
        [alert show];
        [alert release];
    }
    else{
    
    /*-----------------------------------数据录入---------------------------------------*/
        
        //创建文件管理对象，获取文件路径和名字
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSString *filePath = [self dataFilePath];
    
        //判断文件是否存在，不存在则新建文件
        if (![fileManager fileExistsAtPath:filePath]) {
            [fileManager createFileAtPath:filePath contents:nil attributes:nil];
        }
        
        //用Array记录数据
        NSMutableArray *array = [[NSMutableArray alloc]init];
        [array addObject:UserNameTextField.text];
        [array addObject:PassWordTextField.text];
        if (SwitchButton.on == YES) {
            [array addObject:@"YES"];
        }
        else{
            [array addObject:@"NO"];
        }
        //将array写入文件
        [array writeToFile:[self dataFilePath] atomically:YES];
    /*--------------------------------------------------------------------------------*/

    /*------------------------------------登录等候提示----------------------------------*/
        
        //提示窗口
        UIAlertView *alert = [[[UIAlertView alloc]initWithTitle:@"正在登录，请稍候...." message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:nil, nil]autorelease];
        //load转盘
        UIActivityIndicatorView *aiv = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        aiv.center = CGPointMake(140.0f, alert.bounds.size.height +70.0f);
        //等待提示窗口运作
        [aiv startAnimating];
        [alert show];
        [alert addSubview:aiv];
        
    /*---------------------------------判断用户名密码正确与否------------------------------*/  
        
        NSString *url = HostUrl;
        NSURL *hostUrl = [NSURL URLWithString:url];
        ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:hostUrl];
        
        [request setRequestMethod:@"POST"];
        [request addRequestHeader:@"Content-Type" value:@"application/x-www-form-urlencoded"];
        [request setPostValue:UserNameTextField.text forKey:@"j_username"];
        [request setPostValue:PassWordTextField.text forKey:@"j_password"];
        
        [request setDelegate:self];
        
        
//        [request setDidFinishSelector:@selector(GetResult:)];
         [[SteeringSystemAppDelegate App].mainViewController initMainView];
        
        [request setDidFailSelector:@selector(GetErr:)];
        [request startAsynchronous];
        
        

    
    /*-------------------------------------------------------------------------------*/
        
    /*------------------------------------收起等候框-------------------------------------*/
    
        [alert dismissWithClickedButtonIndex:[alert cancelButtonIndex] animated:YES];
        [aiv release];
     
        
    /*-------------------------------------------------------------------------------*/    
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(UserNameTextField == textField)
    { [UserNameTextField resignFirstResponder];}
    if (PassWordTextField == textField)
    {[PassWordTextField resignFirstResponder];}
    return YES;
}
- (IBAction)BackGroundTap:(id)sender
{
    [PassWordTextField resignFirstResponder];
    [UserNameTextField resignFirstResponder];

}


@end
