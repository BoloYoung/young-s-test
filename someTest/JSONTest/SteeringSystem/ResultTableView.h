//
//  ResultTableView.h
//  SteeringSystem
//
//  Created by apple on 12-10-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ResultTableView : UITableViewController {
    
    
    UIView *cellView;
    UIView *displayView;
    NSArray *resultList;
    
    NSString *flag;
}

@property (nonatomic, retain) IBOutlet UIView *cellView;
@property (nonatomic, retain) IBOutlet UIView *displayView;
@property (nonatomic, retain) NSArray *resultList;

@property (nonatomic, retain) NSString *flag; 





@end
