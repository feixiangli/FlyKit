//
//  FlyTabBarController.m
//  FlyKit
//
//  Created by 李飞翔 on 16/6/10.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import "FlyTabBarController.h"

@interface FlyTabBarController()


@end

@implementation FlyTabBarController


+(RDVTabBarController *)flyAddTabBarsTitles:(NSArray*)titles
                              Simages:(NSArray*)SimageNames
                              Uimages:(NSArray*)UimageNames
                    SBackgroundimages:(NSArray*)SBackgroundimageNames
                    UBackgroundimages:(NSArray*)UBackgroundimageNames
                               clases:(NSArray*)classNames
{
    
    RDVTabBarController *tabBarController = [[RDVTabBarController alloc] init];
    NSMutableArray*controllers=[[NSMutableArray alloc]init];

    for (int i = 0 ; i<classNames.count;i++) {
        
        Class class=NSClassFromString(classNames[i]);
        UIViewController*vc=[[class alloc]init];
        UIViewController*nvc=[[UINavigationController alloc]initWithRootViewController:vc];
        [controllers addObject:nvc];
    }
 
    [tabBarController setViewControllers:controllers];

    NSInteger index = 0;
    
    //改变tabBar 的偏移
    tabBarController.tabBar.contentEdgeInsets= UIEdgeInsetsMake(0, 0, 0, 0);
    
    for (RDVTabBarItem *item in [[tabBarController tabBar] items]) {
    
        //设置标签背景 选中和未选中图片
        [item setBackgroundSelectedImage:[UIImage imageNamed:SBackgroundimageNames[index]] withUnselectedImage:[UIImage imageNamed:UBackgroundimageNames[index]]];
        
        //设置标签 选中和未选中图片
        [item setFinishedSelectedImage:[UIImage imageNamed:SimageNames[index]]
           withFinishedUnselectedImage:[UIImage imageNamed:UimageNames[index]]];

        
        item.title = titles[index];
        
        //调整tabbarTitle的位置
        item.titlePositionAdjustment =UIOffsetMake(0, -10);
        //设置tabb 图标的位置
//        item.imagePositionAdjustment

        item.selectedTitleAttributes = @{
                                         NSFontAttributeName: [UIFont boldSystemFontOfSize:12],
                                         NSForegroundColorAttributeName:[UIColor blackColor],
                                         };
        item.unselectedTitleAttributes = @{
                                           NSFontAttributeName: [UIFont boldSystemFontOfSize:12],
                                           NSForegroundColorAttributeName:[UIColor redColor],
                                           };
        index++;
        
    }
    
    //设置导航栏字体
    NSDictionary *textAttributes = @{
                                     NSFontAttributeName: [UIFont boldSystemFontOfSize:18],
                                     NSForegroundColorAttributeName: [UIColor blackColor],
                                     };
    UINavigationBar *navigationBarAppearance = [UINavigationBar appearance];
    [navigationBarAppearance setTitleTextAttributes:textAttributes];
    
    return tabBarController;
}
@end

@implementation UIViewController (Fly)


- (void)FlyTabbarValue:(NSString*)value{
    
    [[self rdv_tabBarItem] setBadgeValue:value];
 
}


@end


