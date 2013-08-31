//
//  NSUserINF.h
//  SteeringSys
//
//  Created by apple on 12-5-28.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSUserINF : NSObject {
    bool m_bIsRemember;
    NSString *m_strName;
    NSString *m_strPassWord;
}

@property (nonatomic) bool m_bIsRemember;
@property (nonatomic,retain)NSString *m_strName;
@property (nonatomic,retain)NSString *m_strPassWord;


-(id)init;
@end
