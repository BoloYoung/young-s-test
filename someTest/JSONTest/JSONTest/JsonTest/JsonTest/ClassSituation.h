//
//  ClassSituation.h
//  SteeringSystem
//
//  Created by apple on 12-10-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ClassSituation : NSObject {

    NSString* survey_id;                    //
    NSString* course_class_no;
    NSString* absent_num;
    NSString* actual_num;
    NSString* student_faculty;
    NSString* food_eat_num;
    NSString* late_leaveearly_num;
    NSString* play_mobil_num;
    NSString* sleep_speak_num;
    NSString* slipper_shorts_num;
    NSString* teacher_ontime;
    NSString* truant_num;
    NSString* vacate_num;
    NSString* other_situation;
    NSString* supervisor;
    NSString* pic_path ; 
    NSString* survey_score;
    NSString* survey_level;
    NSString* notice_flag;
    NSString* survey_receiver;
    NSString* add_user;
    NSString* add_time;
    NSString* modify_user;
    NSString* modify_time;    
    
}

@property (retain, nonatomic) NSString* survey_id;                    //
@property (retain, nonatomic) NSString* course_class_no;
@property (retain, nonatomic) NSString* absent_num;
@property (retain, nonatomic) NSString* actual_num;
@property (retain, nonatomic) NSString* student_faculty;
@property (retain, nonatomic) NSString* food_eat_num;
@property (retain, nonatomic) NSString* late_leaveearly_num;
@property (retain, nonatomic) NSString* play_mobil_num;
@property (retain, nonatomic) NSString* sleep_speak_num;
@property (retain, nonatomic) NSString* slipper_shorts_num;
@property (retain, nonatomic) NSString* teacher_ontime;
@property (retain, nonatomic) NSString* truant_num;
@property (retain, nonatomic) NSString* vacate_num;
@property (retain, nonatomic) NSString* other_situation;
@property (retain, nonatomic) NSString* supervisor;
@property (retain, nonatomic) NSString* pic_path ; 
@property (retain, nonatomic) NSString* survey_score;
@property (retain, nonatomic) NSString* survey_level;
@property (retain, nonatomic) NSString* notice_flag;
@property (retain, nonatomic) NSString* survey_receiver;
@property (retain, nonatomic) NSString* add_user;
@property (retain, nonatomic) NSString* add_time;
@property (retain, nonatomic) NSString* modify_user;
@property (retain, nonatomic) NSString* modify_time;   

@end
