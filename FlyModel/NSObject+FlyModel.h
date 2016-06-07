//
//  NSObject+FlyModel.h
//  FlyKit
//
//  Created by 李飞翔 on 16/6/3.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (FlyModel)

/**
 json转model，json(NSData,NSString,NSDictionary)
 */
+ (instancetype)FlyModel:(id)json;

@end
