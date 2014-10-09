//
//  WBNavigationController.m
//  8_31新浪微博
//
//  Created by 谢琛 on 14/9/14.
//  Copyright (c) 2014年 谢琛. All rights reserved.
//

#import "WBNavigationController.h"
#import "UIImage+XC.h"

@interface WBNavigationController ()

@end

@implementation WBNavigationController

+(void)initialize
{
    
    [self setupNavTheme];
    
    [self setupItemTheme];
  
}
+(void)setupItemTheme
{
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    if(!iOS7)
    {
        //设置背景图片
        [item setBackgroundImage:[UIImage imageWithName:@"navigationbar_button_background"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    }
    //设置字体
    NSMutableDictionary *norMd = [NSMutableDictionary dictionary];
    norMd[UITextAttributeTextColor] = [UIColor orangeColor];
    norMd[UITextAttributeTextShadowOffset] = [NSValue valueWithUIOffset:UIOffsetZero];
    norMd[UITextAttributeFont]  = [UIFont systemFontOfSize:16];
    
    [item setTitleTextAttributes:norMd forState:UIControlStateNormal];
    
    NSMutableDictionary *higMd = [NSMutableDictionary dictionaryWithDictionary:norMd];
    higMd[UITextAttributeTextColor] = [UIColor redColor];
    [item setTitleTextAttributes:higMd forState:UIControlStateHighlighted];
    
}
//设置导航条主题
+(void)setupNavTheme
{
    //设置导航条主题
    UINavigationBar *navBar = [UINavigationBar appearance];
    //设置背景
    if (!iOS7) {
        [navBar setBackgroundImage:[UIImage imageWithName:@"navigationbar_background"] forBarMetrics:UIBarMetricsDefault];
        //设置状态栏颜色
        [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleBlackOpaque;
        //设置文字颜色
        NSMutableDictionary *md = [NSMutableDictionary dictionary];
        md[UITextAttributeTextColor] = [UIColor blackColor];
        //取出阴影
        md[UITextAttributeTextShadowOffset] = [NSValue valueWithUIOffset:UIOffsetZero];//包装成对象
        //设置文字大小
        md[UITextAttributeFont] = [UIFont systemFontOfSize:20];
        [navBar setTitleTextAttributes:md];
    }
    
}

@end
