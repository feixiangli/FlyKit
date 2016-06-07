//
//  FlyPhoto.m
//  FlyKit
//
//  Created by 李飞翔 on 16/6/3.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import "FlyPhoto.h"
#import "MJPhoto.h"
#import "MJPhotoBrowser.h"

@implementation FlyPhoto

+(void)FlyShowPhoto:(UIImageView *)imageView url:(NSString *)imageUrl
{
    MJPhotoBrowser *browser = [[self alloc] init];
    browser.hideToolBar = YES;
    MJPhoto *photo = [[MJPhoto alloc] init];
    photo.srcImageView = imageView;
    photo.url = [NSURL URLWithString:imageUrl];
    browser.photos = @[photo];
    [browser show];
}
@end
