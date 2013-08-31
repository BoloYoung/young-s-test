//
//  MainNavigationController.h
//  SteeringSystem
//
//  Created by apple on 12-8-27.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainView.h"


@interface MainNavigationController : UINavigationController {
    MainView *mainView;
}

@property(retain, nonatomic)MainView *mainView;

@end
