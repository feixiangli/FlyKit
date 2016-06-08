//
//  FlyWhetherHaveNet.h
//  Copyright (c) 2015年 Fly. All rights reserved.
//



/*
 
判断现在是否是联网状态
 
导入  SystemConfiguration.framework
 
加头  #import<SystemConfiguration/SCNetworkReachability.h>
 
 */
#import <Foundation/Foundation.h>
#import<SystemConfiguration/SCNetworkReachability.h>
@interface FlyWhetherHaveNet : NSObject
/**
 判断当前是否有网
 */
+ (BOOL)FlyJudgeNetWork;

@end
