//
//  SubmitView.m
//  SteeringSystem
//
//  Created by apple on 12-8-29.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "SubmitView.h"


@implementation SubmitView

@synthesize alert;
@synthesize alertWait;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"督导信息录入";
        UIBarButtonItem *uploadButton = [[UIBarButtonItem alloc]initWithTitle:@"录入" style:UIBarButtonItemStyleBordered target:self action:@selector(Confirmation)];
        self.navigationItem.rightBarButtonItem = uploadButton;
        UIBarButtonItem *backButton = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStyleBordered target:self action:@selector(ReturnToMain)];
        self.navigationItem.leftBarButtonItem = backButton;
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [alert release];
    [alertWait release];
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
    [self setAlert:nil];
    [self setAlertWait:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)GetResult:(ASIHTTPRequest *)requeset
{
//    NSString *labelshow = [NSString stringWithFormat:@"%d",[requeset responseStatusCode]];
//    uploadView.ShowLabel.text = labelshow;
    
    if ([requeset responseStatusCode] == 201) {
        UIAlertView *alertResult = [[UIAlertView alloc]initWithTitle:nil message:@"录入成功" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [self.navigationController popViewControllerAnimated:YES];
        [alertResult show];
        [alertResult release];
        [alertWait dismissWithClickedButtonIndex:[alertWait cancelButtonIndex] animated:YES];
    }
    else {
        UIAlertView *alertResult = [[UIAlertView alloc]initWithTitle:@"录入失败" message:@"请正确填写信息再录入" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
        [alertWait dismissWithClickedButtonIndex:[alertWait cancelButtonIndex] animated:YES];
        [alertResult show];
        [alertResult release];
    }
}

- (void) GetErr:(ASIHTTPRequest *)request
{
    UIAlertView *alertErr = [[UIAlertView alloc]initWithTitle:@"错误" message:@"网络错误，连接不到服务器" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
    [alertErr show];
    [alertErr release];
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)uploadMessage
{


    
    
    
    NSString *urlstr = URL;
    NSURL *Myurl = [NSURL URLWithString:urlstr];
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:Myurl];
    
    NSMutableData *bodyData = [NSMutableData data];
    NSString *bodyDataStr = [NSString stringWithFormat:@"{\"student_institute\":\"%@\",\"classgroup\":\"%@\",\"study_place\":\"%@\",\"school_time\": \"%@\",\"selectdnum\":%@,\"actualnum\":%@, \"late_leaveEarly\":%@,\"late_leaveEarly_comment\":\"%@\", \"truant\":%@, \"truant_comment\":\"%@\", \"vacate\":%@,\"vacate_comment\": \"%@\", \"food_eat\":%@, \"food_eat_comment\":\"%@\", \"play_cellphone\":%@, \"play_cellphone_comment\":\"%@\",\"sleep_speak\": %@, \"sleep_speak_comment\":\"%@\", \"slipper_shorts\":%@, \"slipper_shorts_comment\":\"%@\",\"teacher_ontime\":%@,\"teacher_ontime_comment\": \"%@\",\"supervisor\":\"%@\", \"absentnum\":%@,\"other_sitution\":\"%@\",\"score\":%@,\"teacher\":\"%@\"}",teacherView.StudentInstitude.text,teacherView.ClassGroup.text,lessonInformationView.StudyPlace.text,lessonInformationView.SchoolTime.text,lessonInformationView.SelectdNumber.text,lessonInformationView.ActualNumber.text,absenceView.LateLeaveEarly.text,absenceView.LateLeaveEarlyComment.text,absenceView.Truant.text,absenceView.TruantComment.text,absenceView.Vacate.text,absenceView.VacateComment.text,disciplineSituationView.FoodEat.text,disciplineSituationView.FoodEatComment.text,disciplineSituationView.PlayCellPhone.text,disciplineSituationView.PlayCellPhoneComment.text,disciplineSituationView.SleepSpeak.text,disciplineSituationView.SleepSpeakComment.text,disciplineSituationView.SlipperShorts.text,disciplineSituationView.SlipperShortsComment.text,teacherView.TeacherOntime.text,teacherView.TeacherOntimeComment.text,uploadView.Supervisor.text,absenceView.AbsentNumber.text,uploadView.OtherSituation.text,uploadView.Score.text,teacherView.Teacher.text];

//    uploadView.ShowLabel.text = bodyDataStr;
        
    
    [bodyData appendData:[bodyDataStr dataUsingEncoding:NSUTF8StringEncoding]];
    [request setRequestMethod:@"POST"];
    [request addRequestHeader:@"Content-Type" value:@"application/json;charset=UTF-8"];
    [request appendPostData:bodyData];
    [request setDelegate:self];
    [request setDidFinishSelector:@selector(GetResult:)];
    [request setDidFailSelector:@selector(GetErr:)];
    [request startAsynchronous];
    
    
}


- (void)Confirmation
{
    alert = [[UIAlertView alloc]initWithTitle:nil message:@"真的要录入吗？" delegate:self cancelButtonTitle:@"否" otherButtonTitles:@"是", nil];
    [alert show];
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (alertView == alert) {
        if (buttonIndex == 1) {
            alertWait = [[[UIAlertView alloc]initWithTitle:@"正在录入，请稍候...." message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:nil, nil]autorelease];
            //load转盘
            UIActivityIndicatorView *aiv = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
            aiv.center = CGPointMake(140.0f, alertWait.bounds.size.height +70.0f);
            //等待提示窗口运作
            [aiv startAnimating];
            [alertWait show];
            [alertWait addSubview:aiv];
            
            [self uploadMessage];

            [aiv release];
            
        }
        else
            ;
    }

}

- (void)ReturnToMain
{
  	[self.navigationController popViewControllerAnimated:YES];  
    
}

@end
