//
//  FontFamilyViewController.h
//  FontFamily
//
//  Created by apple on 13-3-9.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FontFamilyViewController : UIViewController {
    
    UIButton *GetFont;
    UILabel *label_;
    UITextField *textField_;
}
//@property (nonatomic, retain) IBOutlet UIButton *GetFont;
//@property (nonatomic, retain) IBOutlet UILabel *label;
//@property (nonatomic, retain) IBOutlet UITextField *textField;
- (IBAction)GetFontFamily:(id)sender;

@end
