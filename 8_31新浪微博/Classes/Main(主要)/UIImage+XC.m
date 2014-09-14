//
//  UIImage+XC.m
//  8_31新浪微博
//
//  Created by 谢琛 on 14/8/31.
//  Copyright (c) 2014年 谢琛. All rights reserved.
//

#import "UIImage+XC.h"

@implementation UIImage (XC)

+(instancetype)imageWithName:(NSString *)imageName
{
    UIImage *resultImage = nil;
    if (iOS7) {
        NSString *newImageName = [imageName stringByAppendingString:@"_os7"];
        resultImage = [UIImage imageNamed:newImageName];
    }
    if (resultImage == nil) {
        resultImage = [UIImage imageNamed:imageName];
    }
    
    return resultImage;
}
@end
