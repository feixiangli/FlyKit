//
//  FlyGetIPAddress.m
//  FlyKit
//
//  Created by 李飞翔 on 16/6/8.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import "FlyGetIPAddress.h"
#include <ifaddrs.h>
#include <arpa/inet.h>

@implementation FlyGetIPAddress

+ (NSString *)FlyIPAddress
{
    NSString *address = @"error";
    struct ifaddrs *interfaces = NULL;
    struct ifaddrs *temp_addr = NULL;
    int success = 0;
    
    success = getifaddrs(&interfaces);
    if (success == 0) {
        temp_addr = interfaces;
        while (temp_addr != NULL) {
            if( temp_addr->ifa_addr->sa_family == AF_INET) {
                if ([[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:@"en0"]) {
                    address = [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)temp_addr->ifa_addr)->sin_addr)];
                }
            }
            
            temp_addr = temp_addr->ifa_next;
        }
    }
    
    freeifaddrs(interfaces);
    
    return address;
}
@end
