//
//  UpLoadItemViewController.h
//  SteeringSystem
//
//  Created by apple on 12-8-24.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LessonInformationView.h"
#import "TeacherView.h"
#import "DisciplineSituationView.h"
#import "AbsenceView.h"
#import "UploadView.h"


@interface SumOfDetailView : UIViewController {
    TeacherView *teacherView;
    LessonInformationView * lessonInformationView;
    AbsenceView *absenceView ; 
    DisciplineSituationView *disciplineSituationView;
    UploadView *uploadView;
    UIScrollView *scrollView;
}

@property (nonatomic, retain) UIScrollView *scrollView;
@property (nonatomic, retain) TeacherView *teacherView;
@property (nonatomic, retain) LessonInformationView * lessonInformationView;
@property (nonatomic, retain) AbsenceView *absenceView ;
@property (nonatomic, retain) DisciplineSituationView *disciplineSituationView;
@property (nonatomic, retain) UploadView *uploadView;


@end
