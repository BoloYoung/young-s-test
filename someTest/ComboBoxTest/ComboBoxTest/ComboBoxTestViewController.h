//
//  ComboBoxTestViewController.h
//  ComboBoxTest
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ComboBoxClass.h"

@interface ComboBoxTestViewController : UIViewController {
    ComboBoxClass *comboBox;
}
@property (retain, nonatomic)ComboBoxClass *comboBox;

@end
