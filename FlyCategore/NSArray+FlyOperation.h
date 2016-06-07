//
//  NSArray+FlyOperation.h
//  FlyKit
//
//  Created by 李飞翔 on 16/6/7.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (FlyOperation)

/**
 返回数组里的一个随机元素
 */
- (id)FlyRandomObject;

/**
返回数组该索引的元素（不会崩溃）
 */
- (id)FlyObjectAtIndex:(NSUInteger)index;


@end


@interface NSMutableArray (FlyOperation)

/**
 将数组倒序排列
 */
- (void)FlyReverse;

/**
将数组顺序打乱
 */
- (void)FlyShuffle;

@end

