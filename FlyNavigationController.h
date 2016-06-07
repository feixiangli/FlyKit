//
//  FlyNavigationController.h
//  FlyKit
//
//  Created by 李飞翔 on 16/6/7.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FlyNavigationController : UINavigationController
//UINavigationController基类

//导航栏颜色
@property(nonatomic,retain) UIColor *NavigationBarColor;

/**
 透明的导航栏
 */
- (void)clearNavigationBarBackground;

/**
 不透明的
 */
- (void)resetNavigationBarBackground;

@end
