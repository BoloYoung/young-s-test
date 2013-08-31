//
//  ComboBoxClass.h
//  ComboBoxTest
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ComboBoxClass : UITextField <UITextFieldDelegate,
                                    UIPickerViewDelegate,
                                    UIPickerViewDataSource> 
{
    UIToolbar *toolbar;


}
@property (retain, nonatomic)UIToolbar *toolbar;

//- (void)didMoveToSuperview;
////- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;
//- (void)didMoveToWindow;
//- (void)saveSelection:(id)sender;


@end
