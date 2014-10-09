//
//  UIImage+XC.m
//  8_31新浪微博
//
//  Created by 谢琛 on 14/9/14.
//  Copyright (c) 2014年 谢琛. All rights reserved.
//

#import "UIImage+XC.h"

@implementation UIImage (XC)
+ (instancetype)imageWithName:(NSString *)imageName
{
    // 1.定义返回值
    UIImage *resultImage = nil;
    // 2.判断当前是否是ios7
    if (iOS7) {
        // 注意, 不是所有的图片都有_os7结尾的图片
        NSString *newImageName = [imageName stringByAppendingString:@"_os7"];
        resultImage = [UIImage imageNamed:newImageName];
        // 判断是否有ios7的图片
    }
    
    // 判断是否有ios7的图片
    if (resultImage == nil) {
        resultImage = [UIImage imageNamed:imageName];
    }
    
    // 4.返回结果
    return resultImage;
}

+ (instancetype)resizeableImageWithName:(NSString *)imageName;
{
    return [self resizeableImageWithName:imageName leftRatio:0.5 topRatio:0.5];
}
+ (instancetype)resizeableImageWithName:(NSString *)imageName leftRatio:(CGFloat)leftRatio topRatio:(CGFloat)topRatio;
{
    //创建图片
    UIImage *image = [UIImage imageWithName:imageName];
    CGFloat left = image.size.width * leftRatio;
    CGFloat top = image.size.height * topRatio;
    image = [image stretchableImageWithLeftCapWidth:left topCapHeight:top];
    return image;
}
@end
