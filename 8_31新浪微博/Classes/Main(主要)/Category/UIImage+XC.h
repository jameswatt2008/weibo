//
//  UIImage+XC.h
//  8_31新浪微博
//
//  Created by 谢琛 on 14/9/14.
//  Copyright (c) 2014年 谢琛. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (XC)
/**
 *  根据传入的图片名称, 自动返回当前系统对应的图片
 *
 *  @param imageName 图片名称
 *
 *  @return 对应系统版本的图片
 */
+ (instancetype)imageWithName:(NSString *)imageName;
//根据图片名称,创建拉伸不变形图片
+ (instancetype)resizeableImageWithName:(NSString *)imageName;

+ (instancetype)resizeableImageWithName:(NSString *)imageName leftRatio:(CGFloat)leftRatio topRatio:(CGFloat)topRatio;

@end
