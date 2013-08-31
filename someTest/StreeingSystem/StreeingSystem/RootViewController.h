//
//  RootViewController.h
//  StreeingSystem
//
//  Created by apple on 12-6-1.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WelcomeView;
@class LoginViewController;
//@class TabMainController;
@class TabMain;
@interface RootViewController : UIViewController {
    
    IBOutlet WelcomeView *m_pWelcomeView; 
    //IBOutlet TabMainController *m_pTabMainController;
    IBOutlet LoginViewController *m_loginView;
    IBOutlet TabMain *m_pTabMainView;
    
}

@property (nonatomic, retain) IBOutlet WelcomeView *m_pWelcomeView;
@property (nonatomic, retain) IBOutlet LoginViewController *m_loginView;
@property (nonatomic, retain) IBOutlet TabMain *m_pTabMainView;

//init func;
- (void) initView; 
- (void) initWelcomeView;
- (void) initLoginView;
- (void) initMainView;

@end
