//
//  UIView+Frame.m
//  FlyBaisibudejie
//
//  Created by 李飞翔 on 16/4/19.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)
-(void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width=width;
    self.frame=frame;
    
}

-(void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.width=height;
    self.frame=frame;
    
}

-(void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y=y;
    self.frame=frame;
}
-(void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x=x;
    self.frame=frame;
}


-(CGFloat)width
{
    return self.frame.size.width;
}
-(CGFloat)height
{
    return self.frame.size.height;
}-(CGFloat)x
{
    return self.frame.origin.x;
}-(CGFloat)y
{
    return self.frame.origin.y;
}


-(void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}


-(void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

-(CGFloat)centerX{
    return self.center.x;
}


- (CGFloat)centerY
{
    return self.center.y;
}



@end
