//
//  UITextField+FlyOperation.m
//  FlyKit
//
//  Created by 李飞翔 on 16/6/7.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import "UITextField+FlyOperation.h"

@implementation UITextField (FlyOperation)

- (void)FLyDateInputView;
{
    UIDatePicker *picker = [[UIDatePicker alloc] init];
    picker.datePickerMode = UIDatePickerModeDate;
    picker.minimumDate = [NSDate date];
    [picker addTarget:self action:@selector(datePickerChanged:) forControlEvents:UIControlEventValueChanged];
    self.inputView = picker;
    
    UIToolbar *bar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 44)];
    //    bar.barTintColor = [UIColor whiteColor];
    UIBarButtonItem *cancelItem = [[UIBarButtonItem alloc] initWithTitle:@"取消"style:UIBarButtonItemStylePlain target:self action:@selector(cancelAction:)];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    UIBarButtonItem *doneItem = [[UIBarButtonItem alloc] initWithTitle:@"确定" style:UIBarButtonItemStylePlain target:self action:@selector(doneAction:)];
    bar.items = @[cancelItem,item,doneItem];
    self.inputAccessoryView = bar;
}
- (void)cancelAction:(id)sender
{
    [self resignFirstResponder];
}
- (void)doneAction:(id)sender
{
    UIDatePicker *picker = (UIDatePicker *)self.inputView;
    if ([picker isKindOfClass:[UIDatePicker class]]) {

        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy-MM-dd"];
        [formatter setLocale:[NSLocale currentLocale]];
        self.text=[formatter stringFromDate:picker.date];
    }
    [self resignFirstResponder];
}
- (void)datePickerChanged:(UIDatePicker *)picker
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    [formatter setLocale:[NSLocale currentLocale]];
    self.text=[formatter stringFromDate:picker.date];
}

@end
