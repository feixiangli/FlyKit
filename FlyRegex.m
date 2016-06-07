//
//  FlyRegex.m
//  FlyKit
//
//  Created by 李飞翔 on 16/6/3.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import "FlyRegex.h"

@implementation FlyRegex

+(BOOL)FlyRegex:(NSString *)regex{
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [regextestcm evaluateWithObject:self];
}

@end
