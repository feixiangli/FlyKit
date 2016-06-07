//
//  FlyScrollview.h
//  FlyKit
//
//  Created by 李飞翔 on 16/6/3.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlyScrollview : UIScrollView
{
    UIEdgeInsets    _priorInset;
    BOOL            _priorInsetSaved;
    BOOL            _keyboardVisible;
    CGRect          _keyboardRect;
    CGSize          _originalContentSize;
}
/**
 TextField 输入状态 自适应屏幕
 把控件创建在FlyScrollview上即可
 */
- (id)initWithFrame:(CGRect)frame;

- (void)adjustOffsetIfNeeded;

@end
