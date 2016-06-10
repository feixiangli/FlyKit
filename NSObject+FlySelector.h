//
//  NSObject+FlySelector.h
//  FlyKit
//
//  Created by 李飞翔 on 16/6/11.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (FlySelector)
/**
 间接调用方法
 */
- (id)FlyPerformSelector:(SEL)selector withObjects:(NSArray *)objects;

@end
