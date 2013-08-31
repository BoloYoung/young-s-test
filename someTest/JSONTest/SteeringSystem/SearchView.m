//
//  SearchView.m
//  SteeringSystem
//
//  Created by apple on 12-8-27.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "SearchView.h"


@implementation SearchView

@synthesize resultTableView;
@synthesize date;
@synthesize classroom;
@synthesize lessontime;
@synthesize campus;
@synthesize supervisorId;
@synthesize classroomView;
@synthesize lessontimeView;
@synthesize dataPickerView;
@synthesize classroomTableView;
@synthesize lessontimeTableView;
@synthesize campusTableView;
@synthesize datePicker;
@synthesize toolBar;
@synthesize searchView;
@synthesize campusView;
@synthesize classroomList;
@synthesize lessontimeList;
@synthesize campusList;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"督导信息查询";
        UIBarButtonItem *SearchButton = [[UIBarButtonItem alloc]initWithTitle:@"查找" style:UIBarButtonItemStyleBordered target:self action:@selector(SearchMessage)];
        UIBarButtonItem *BackButton = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStyleBordered target:self action:@selector(ReturnToMain)];
        self.navigationItem.rightBarButtonItem = SearchButton;
        self.navigationItem.leftBarButtonItem = BackButton;
    }
    return self;
}

- (void)dealloc
{
    [resultTableView release];
    [date release];
    [classroom release];
    [lessontime release];
    [classroomView release];
    [lessontimeView release];
    [classroomTableView release];
    [lessontimeTableView release];
    [searchView release];
    [classroomButton release];
    [dataPickerView release];
    [datePicker release];
    [toolBar release];
    [campusView release];
    
    [campusTableView release];
    [campus release];
    [supervisorId release];
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
//    [self setModifyView:nil];
    [super viewDidLoad];
    [self.view addSubview:self.searchView];
    
    
    self.classroomList  = [NSArray arrayWithObjects:@"教4－301",@"教5－401" ,nil];
    self.lessontimeList = [NSArray arrayWithObjects:@"第1，2节",@"第3，4节",@"第5节",@"第6，7节",@"第8，9节",@"晚修" ,nil];
    self.campusList = [NSArray arrayWithObjects:@"大学城",@"东风路",@"龙洞", nil];
    
    self.classroom.text = [self.classroomList  objectAtIndex:0];
    self.lessontime.text = [self.lessontimeList objectAtIndex:0];
    self.campus.text = [self.campusList objectAtIndex:0];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setDate:nil];
    [self setClassroom:nil];
    [self setLessontime:nil];
    
    [self setClassroomView:nil];
    [self setLessontimeView:nil];
    
    [self setClassroomTableView:nil];
    [self setLessontimeTableView:nil];
    [self setSearchView:nil];
    
    [self setDataPickerView:nil];
    [self setDatePicker:nil];
    [self setToolBar:nil];
    [self setCampusView:nil];
    
    [self setCampusTableView:nil];
    [self setCampus:nil];
    [self setSupervisorId:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)SearchMessage
{
//    modifyView = [[ModifyView alloc]init];
    resultTableView = [[ResultTableView alloc]init];
    [self.navigationController pushViewController:resultTableView animated:YES];
}

- (void)ReturnToMain
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(IBAction) textFiledReturnEditing:(id)sender
{
    [sender resignFirstResponder];
    
}
-(IBAction) backgroundTap:(id)sender                    //点击背景
{
    [date resignFirstResponder];
    [classroom resignFirstResponder];
    [lessontime resignFirstResponder];
    [campus resignFirstResponder];
    [supervisorId resignFirstResponder];
    
    [self.classroomTableView removeFromSuperview];
    [self.lessontimeTableView removeFromSuperview];
    [self.datePicker removeFromSuperview];
    [self.toolBar removeFromSuperview];
    [self.campusTableView removeFromSuperview];
    
    
    /*
     CGContextRef context = UIGraphicsGetCurrentContext();  
     [UIView beginAnimations:nil context:context];  
     [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];  
     [UIView setAnimationDuration:0.6];//动画时间长度，单位秒，浮点数   
     self.pickerView.frame = CGRectMake(0, 480, 320, 260);  
     
     [UIView setAnimationDelegate:self];  
     // 动画完毕后调用animationFinished   
     [UIView setAnimationDidStopSelector:@selector(animationFinished)];  
     [UIView commitAnimations];  
     
     */
    
}

- (IBAction)classroomButton:(id)sender                 //显示课室的选择
{
    [classroom resignFirstResponder];
    [self.lessontimeTableView removeFromSuperview];
    [self.campusTableView removeFromSuperview];
    [self.datePicker removeFromSuperview];
    [self.toolBar removeFromSuperview];
    [self.view addSubview:self.classroomTableView];
}

- (IBAction)lessontimeButton:(id)sender               //显示上课时间的选择
{
    [self.classroomTableView removeFromSuperview];
    [self.campusTableView removeFromSuperview];
    [self.datePicker removeFromSuperview];
    [self.toolBar removeFromSuperview];
    [self.view addSubview:self.lessontimeTableView];
}

- (IBAction)datePickerButton:(id)sender               //显示日期的选择
{
    [self.classroomTableView removeFromSuperview];
    [self.lessontimeTableView removeFromSuperview];
    [self.campusTableView removeFromSuperview];
    [self.view addSubview:toolBar];
    [self.view addSubview:datePicker];
    
    /*
     // 动画
     CGContextRef context = UIGraphicsGetCurrentContext();  
     [UIView beginAnimations:nil context:context];  
     [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];  
     [UIView setAnimationDuration:0.6];//动画时间长度，单位秒，浮点数   
     [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];  
     self.datePicker.frame = CGRectMake(0, 244, 320, 216); 
     //self.toolBar.frame = CGRectMake(0, 200, 320, 44);
     
     //[UIView setAnimationDelegate:self];  
     // 动画完毕后调用animationFinished   
    // [UIView setAnimationDidStopSelector:@selector(animationFinished)];  
     [UIView commitAnimations];  
     [self.view addSubview:toolBar];
    self.toolBar.frame = CGRectMake(0, 200, 320, 44);
     
    */
}

- (IBAction)doneButton:(id)sender                    //选择日期格式为yyyy－mm－dd
{
    NSData *select = [datePicker date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];   
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    date.text = [dateFormatter stringFromDate:select];
    [self.datePicker removeFromSuperview];
    [self.toolBar removeFromSuperview];
}

- (IBAction)campusButton:(id)sender                 //显示校区的选择
{
    [self.classroomTableView removeFromSuperview];
    [self.lessontimeTableView removeFromSuperview];
    [self.datePicker removeFromSuperview];
    [self.toolBar removeFromSuperview];
    [self.view addSubview:self.campusTableView];
}


#pragma mark -
#pragma mark date Source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return 20;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
	if (tableView == self.classroomTableView) 
	{return [self.classroomList  count];}
	
    else if(tableView == self.lessontimeTableView)
    {return [self.lessontimeList count];}
    
    else
        return [self.campusList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	static NSString *TableIdentifier = @"theTableIdentifier";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TableIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableIdentifier]autorelease];
	}
	
	NSUInteger row = [indexPath row];
	cell.textLabel.textAlignment = UITextAlignmentCenter;
	if (tableView == self.classroomTableView) {
		cell.textLabel.text = [self.classroomList  objectAtIndex:row];
	}
	else if(tableView == self.lessontimeTableView){
        
        cell.textLabel.text = [self.lessontimeList objectAtIndex:row];
	}
    else
    {
        cell.textLabel.text = [self.campusList objectAtIndex:row];
    }
	return cell;
	
	
	
}


#pragma mark -
#pragma mark Table Delegate Methods
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
	
	
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
	
	
	int row = [indexPath row];
	if (tableView == self.classroomTableView) 
	{
		NSString *classroomlist = [self.classroomList  objectAtIndex:row];
        
		
		
		[self.classroomTableView removeFromSuperview];
		[self.lessontimeTableView reloadData];
		classroom.text = classroomlist;
		lessontime.text = [self.lessontimeList objectAtIndex:0];
	}
	else if(tableView == self.lessontimeTableView)
	{
		NSString *lessontimelist = [self.lessontimeList
                                    objectAtIndex:row];
		[self.lessontimeTableView removeFromSuperview];
        [self.campusTableView reloadData];
		lessontime.text = lessontimelist;
        campus.text = [self.campusList objectAtIndex:0];
	}
    else
    {
        NSString *campuslist = [self.campusList
                                objectAtIndex:row];
        [self.campusTableView removeFromSuperview];
        campus.text = campuslist;
    }
    
	
}





@end
