//
//  singletestViewController.h
//  singletest
//
//  Created by apple on 12-8-11.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface singletestViewController : UIViewController {
    
    UIScrollView *scrollView;
    UIPageControl *pageControl;
}
@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) IBOutlet UIPageControl *pageControl;

- (IBAction)changePage:(id)sender;

@end
