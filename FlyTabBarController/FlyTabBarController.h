//
//  FlyTabBarController.h
//  FlyKit
//
//  Created by 李飞翔 on 16/6/10.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RDVTabBarController.h"
#import "RDVTabBar.h"
#import "RDVTabBarItem.h"

@interface FlyTabBarController : RDVTabBarController


/**
 创建一个TabBarController
 titles                 ：tabbarTitle数组
 SimageNames            ：点击时tabbar图片数组
 UimageNames            ：非点击tabbar图片数组
 SBackgroundimageNames  ：点击时tabbar背景图片数组
 UBackgroundimageNames  ：非点击tabbar背景图片数组
 classNames             ：类名数组
 */

+ (FlyTabBarController *)flyAddTabBarsTitles:(NSArray*)titles
                                     Simages:(NSArray*)SimageNames
                                     Uimages:(NSArray*)UimageNames
                           SBackgroundimages:(NSArray*)SBackgroundimageNames
                           UBackgroundimages:(NSArray*)UBackgroundimageNames
                                      clases:(NSArray*)classNames;

@end

@interface UIViewController (Fly)

/**
 设置BarItem角标
 */
- (void)FlyTabbarValue:(NSString*)value;

@end

/*
 复制粘贴用
 
 NSArray *titles                = @[@"",@"",@"",@"",@""];
 NSArray *SimageNames           = @[@"",@"",@"",@"",@""];
 NSArray *UimageNames           = @[@"",@"",@"",@"",@""];
 NSArray *SBackgroundimageNames = @[@"",@"",@"",@"",@""];
 NSArray *UBackgroundimageNames = @[@"",@"",@"",@"",@""];
 NSArray *classNames            = @[@"",@"",@"",@"",@""];
 
 */

