//
//  NSObject+FlyModel.m
//  FlyKit
//
//  Created by 李飞翔 on 16/6/3.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import "NSObject+FlyModel.h"
#import "YYModel.h"
@implementation NSObject (FlyModel)

+ (instancetype)FlyModel:(id)json{
    return [self yy_modelWithJSON:json];
}

@end
