//
//  FlyMD5.m
//  FlyKit
//
//  Created by 李飞翔 on 16/6/3.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import "FlyMD5.h"
#import "CommonCrypto/CommonDigest.h"

@implementation FlyMD5

+(NSString *)FlyCreateMD5WithString: (NSString *) inPutText
{
    const char *cStr = [inPutText UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (unsigned int)strlen(cStr), result);
    return [[NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0], result[1], result[2], result[3],
             result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11],
             result[12], result[13], result[14], result[15]
             ] lowercaseString];
}
@end
