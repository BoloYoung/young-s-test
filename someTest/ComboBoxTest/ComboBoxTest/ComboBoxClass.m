//
//  ComboBoxClass.m
//  ComboBoxTest
//
//  Created by apple on 12-8-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "ComboBoxClass.h"


@implementation ComboBoxClass

@synthesize toolbar;

- (void)didMoveToSuperview
{
    CGRect boudns = self.bounds;
    UIImage *image = [UIImage imageNamed:@"compose-at.png"];
    CGSize imageSize = image.size;
    
    CGRect imageViewRect = CGRectMake((boudns.origin.x + boudns.size.width) - imageSize.width, (boudns.size.height/2) - (imageSize.height/2), imageSize.width, imageSize.height);
    
    UIImageView *indicator = [[UIImageView alloc]initWithFrame:imageViewRect];
    [self addSubview:indicator];
    indicator.image = image;

}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    ;
 //  NSString *string = [delegate 

}

- (void)didMoveToWindow
{
    if (toolbar == nil) {
        toolbar = [[UIToolbar alloc]init];
        toolbar.hidden = YES;
        toolbar.barStyle = UIBarStyleBlackTranslucent;
        [toolbar sizeToFit];
        UIWindow *appWindow = [self window];
        CGRect windowBounds = [self bounds];
   
        toolbar.frame = CGRectMake(0, 480 - windowBounds.size.height - 45, 320, 45);
        NSMutableArray *barItems = [[NSMutableArray alloc] init];
        UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
        [barItems addObject:flexSpace];
        UIBarButtonItem *btn = [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(saveSelection:)];
        [barItems addObject:btn];
        
        [toolbar setItems:barItems animated:YES];
        [appWindow addSubview:toolbar];
    
    }
}

- (void)saveSelection:(id)sender
{
    toolbar.hidden = YES;
    self.hidden = YES;

}


                        
@end
