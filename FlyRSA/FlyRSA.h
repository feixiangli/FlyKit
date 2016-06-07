//
//  FlyRSA.h
//  FlyKit
//
//  Created by 李飞翔 on 16/6/3.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FlyRSA : NSObject

extern NSString *const public_key ;

extern NSString *const private_key ;

/**
 加密字符串
 */
+ (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;

/**
 加密数据
 */
+ (NSData *)encryptData:(NSData *)data publicKey:(NSString *)pubKey;

/**
 使用公钥解密字符串
 */
+ (NSString *)decryptString:(NSString *)str publicKey:(NSString *)pubKey;
/**
 使用公钥解密数据
 */
+ (NSData *)decryptData:(NSData *)data publicKey:(NSString *)pubKey;

/**
 使用私钥解密字符串
 */
+ (NSString *)decryptString:(NSString *)str privateKey:(NSString *)privKey;
/**
 使用私钥解密数据
 */
+ (NSData *)decryptData:(NSData *)data privateKey:(NSString *)privKey;


// return base64 encoded string
// enc with private key NOT working YET!
//+ (NSString *)encryptString:(NSString *)str privateKey:(NSString *)privKey;
// return raw data
//+ (NSData *)encryptData:(NSData *)data privateKey:(NSString *)privKey;

// decrypt base64 encoded string, convert result to string(not base64 encoded)

@end
