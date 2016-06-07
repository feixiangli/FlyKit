//
//  FlyNavigationController.m
//  FlyKit
//
//  Created by 李飞翔 on 16/6/7.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import "FlyNavigationController.h"
#import "FlyViewController.h"



@interface FlyNavigationController ()<UIGestureRecognizerDelegate,UINavigationControllerDelegate>

@property (nonatomic,weak) UIViewController *lastViewController;

@end

@implementation FlyNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (!self.NavigationBarColor) {
        self.NavigationBarColor = [UIColor lightGrayColor];
    }
    [self.navigationBar setBarTintColor:self.NavigationBarColor];
    [self resetNavigationBarBackground];
    [self.navigationBar setShadowImage:[UIImage new]];
    [self.navigationBar setTintColor:[UIColor whiteColor]];
    [self.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, nil]];
    self.interactivePopGestureRecognizer.delegate = self;
    self.view.backgroundColor = [UIColor whiteColor];
    self.delegate = self;
}
- (void)clearNavigationBarBackground
{
    [self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
}
- (void)resetNavigationBarBackground
{

    [self.navigationBar setBackgroundImage:[self imageWithColor:self.NavigationBarColor] forBarMetrics:UIBarMetricsDefault];
}

- (UIImage *)imageWithColor:(UIColor *)color {
    return [self imageWithColor:color size:CGSizeMake(1, 1)];
}

- (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size {
    if (!color || size.width <= 0 || size.height <= 0) return nil;
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    if (self.viewControllers.count == 1) {
        return NO;
    }
    if (self.topViewController.navigationItem.hidesBackButton) {
        return NO;
    }
    return YES;
}
#pragma mark 根据当前加载的viewController和上一个viewController 动态调整navigationBar是否透明
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated;
{
    self.lastViewController = viewController;
}
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [self resetNavigationBarBackground];
//    [self clearNavigationBarBackground];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return [self.topViewController preferredStatusBarStyle];
}
@end
