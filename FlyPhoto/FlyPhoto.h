//
//  FlyPhoto.h
//  FlyKit
//
//  Created by 李飞翔 on 16/6/3.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface FlyPhoto : NSObject

/**
 显示大图框架
 imageView：要弹大图的imageView
 imageurl：要打开的大图URL
 */
+(void)FlyShowPhoto:(UIImageView *)imageView url:(NSString *)imageUrl;

@end
