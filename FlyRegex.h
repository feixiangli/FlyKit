//
//  FlyRegex.h
//  FlyKit
//
//  Created by 李飞翔 on 16/6/3.
//  Copyright © 2016年 Fly. All rights reserved.
//


#import <Foundation/Foundation.h>
//正则

// 正则表达式
#define REGEX_decmal		@"^([+-]?)\\d*\\.\\d+$"	//浮点数
#define REGEX_decmal1		@"^[1-9]\\d*.\\d*|0.\\d*[1-9]\\d*$"	//正浮点数
#define REGEX_decmal2		@"^-([1-9]\\d*.\\d*|0.\\d*[1-9]\\d*)$"	//负浮点数
#define REGEX_decmal3		@"^-?([1-9]\\d*.\\d*|0.\\d*[1-9]\\d*|0?.0+|0)$"	//浮点数
#define REGEX_decmal4		@"^[1-9]\\d*.\\d*|0.\\d*[1-9]\\d*|0?.0+|0$"	//非负浮点数（正浮点数 + 0）
#define REGEX_decmal5		@"^(-([1-9]\\d*.\\d*|0.\\d*[1-9]\\d*))|0?.0+|0$"	//非正浮点数（负浮点数 + 0）
#define REGEX_intege		@"^-?[1-9]\\d*$"	//整数
#define REGEX_intege1		@"^[1-9]\\d*$"	//正整数
#define REGEX_intege2		@"^-[1-9]\\d*$"	//负整数
#define REGEX_num			@"^([+-]?)\\d*\\.?\\d+$"	//数字
#define REGEX_num1			@"^[1-9]\\d*|0$"	//正数（正整数 + 0）
#define REGEX_num2			@"^-[1-9]\\d*|0$"	//负数（负整数 + 0）
#define REGEX_ascii			@"^[\\x00-\\xFF]+$"	//仅ACSII字符
#define REGEX_chinese		@"^[\\u4e00-\\u9fa5]+$"	//仅中文
#define REGEX_color			@"^[a-fA-F0-9]{6}$"	//颜色
#define REGEX_date			@"^\\d{4}(\\-|\\/|\.)\\d{1,2}\\1\\d{1,2}$"	//日期
#define REGEX_email			@"^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$"	//邮件
#define REGEX_idcard		@"^[1-9]([0-9]{14}|[0-9]{17})$"	//身份证
#define REGEX_ip4			@"^(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)$"	//ip地址
#define REGEX_letter		@"^[A-Za-z]+$"	//字母
#define REGEX_letter_l		@"^[a-z]+$"	//小写字母
#define REGEX_letter_u		@"^[A-Z]+$"	//大写字母
#define REGEX_mobile		@"^[0](13|15)[0-9]{9}$"	//手机
#define REGEX_mobile1		@"^0{0,1}(13[0-9]|15[0-9]|18[0-9]|14[0-9])[0-9]{8}"	//手机

#define REGEX_notempty		@"^\\S+$"	//非空
#define REGEX_password		@"^[A-Za-z0-9_-]+$"	//密码
#define REGEX_picture		@"(.*)\\.(jpg|bmp|gif|ico|pcx|jpeg|tif|png|raw|tga)$"	//图片
#define REGEX_qq			@"^[1-9]*[1-9][0-9]*$"	//QQ号码
#define REGEX_rar			@"(.*)\\.(rar|zip|7zip|tgz)$"	//压缩文件
#define REGEX_tel			@"^[0-9\-()（）]{7,18}$"	//电话号码的函数(包括验证国内区号,国际区号,分机号)
#define REGEX_url			@"^http[s]?:\\/\\/([\\w-]+\\.)+[\\w-]+([\\w-./?%&=]*)?$"	//url
#define REGEX_username		@"^[A-Za-z0-9_\\-\\u4e00-\\u9fa5]+$"	//用户名
#define REGEX_deptname		@"^[A-Za-z0-9_()（）\\-\\u4e00-\\u9fa5]+$"	//单位名
#define REGEX_zipcode		@"^\\d{6}$"	//邮编
#define REGEX_realname		@"^[A-Za-z0-9\\u4e00-\\u9fa5]+$"  // 真实姓名
#define REGEX_password618		@"^[a-z,A-Z,0-9]{6,18}"  // 6-18密码

#define REGEX_mobilePhone   @"\\b(1)[34578][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]\\b"//手机号码

@interface FlyRegex : NSObject
/**
 使用正则表达式判断
 */
+ (BOOL)FlyRegex:(NSString *)regex;

@end
