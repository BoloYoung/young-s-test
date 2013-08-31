//
//  NSUserINF.m
//  SteeringSys
//
//  Created by apple on 12-5-28.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "NSUserINF.h"


@implementation NSUserINF

@synthesize m_bIsRemember;
@synthesize m_strName;
@synthesize m_strPassWord;

-(id)init{
    m_strName = [NSString alloc];
    m_strName = [NSString alloc];
    m_bIsRemember = false;
    return [super init];
}

@end
