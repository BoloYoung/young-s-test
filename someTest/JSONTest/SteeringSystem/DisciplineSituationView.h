//
//  DisciplineSituationView.h
//  SteeringSystem
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DisciplineSituationView : UIViewController {
    
    UITextField *FoodEat;
    UITextField *FoodEatComment;
    UITextField *PlayCellPhone;
    UITextField *PlayCellPhoneComment;
    UITextField *SleepSpeak;
    UITextField *SleepSpeakComment;
    UITextField *SlipperShorts;
    UITextField *SlipperShortsComment;
    UITextField *Comment;
}
@property (nonatomic, retain) IBOutlet UITextField *FoodEat;
@property (nonatomic, retain) IBOutlet UITextField *FoodEatComment;
@property (nonatomic, retain) IBOutlet UITextField *PlayCellPhone;
@property (nonatomic, retain) IBOutlet UITextField *PlayCellPhoneComment;
@property (nonatomic, retain) IBOutlet UITextField *SleepSpeak;
@property (nonatomic, retain) IBOutlet UITextField *SleepSpeakComment;
@property (nonatomic, retain) IBOutlet UITextField *SlipperShorts;
@property (nonatomic, retain) IBOutlet UITextField *SlipperShortsComment;

@property (nonatomic, retain) IBOutlet UITextField *Comment;



-(IBAction) textFiledReturnEditing:(id)sender;
-(IBAction) backgroundTap:(id)sender;



@end
