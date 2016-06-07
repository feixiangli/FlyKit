//
//  NSArray+FlyOperation.m
//  FlyKit
//
//  Created by 李飞翔 on 16/6/7.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import "NSArray+FlyOperation.h"

@implementation NSArray (FlyOperation)

- (id)FlyRandomObject {
    if (self.count) {
        return self[arc4random_uniform((u_int32_t)self.count)];
    }
    return nil;
}

- (id)FlyObjectAtIndex:(NSUInteger)index{
    return index < self.count ? self[index] : nil;
}

@end


@implementation NSMutableArray (FlyOperation)


- (void)FlyReverse {
    NSUInteger count = self.count;
    int mid = floor(count / 2.0);
    for (NSUInteger i = 0; i < mid; i++) {
        [self exchangeObjectAtIndex:i withObjectAtIndex:(count - (i + 1))];
    }
}

- (void)FlyShuffle {
    for (NSUInteger i = self.count; i > 1; i--) {
        [self exchangeObjectAtIndex:(i - 1)
                  withObjectAtIndex:arc4random_uniform((u_int32_t)i)];
    }
}

@end

