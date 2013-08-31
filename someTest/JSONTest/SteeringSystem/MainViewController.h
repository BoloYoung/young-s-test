//
//  MainViewController.h
//  SteeringSystem
//
//  Created by apple on 12-8-15.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h> 
#import "LoginView.h"
//#import "MainView.h"
#import "WelcomeView.h"

//@class LoginView;
//@class MainView;
//@class WelcomeView;

@interface MainViewController : UIViewController {
    LoginView *loginView;
 //   MainView *mainView;
    WelcomeView *welcomeView;
}
@property (nonatomic, retain) LoginView *loginView;
//@property (nonatomic, retain) MainView *mainView;
@property (nonatomic, retain) WelcomeView *welcomeView;

//- (IBAction) switchView:(id)sender;
- (void)initLoginView;
- (void)initMainView;
//- (void)initWelcomeView;

@end
