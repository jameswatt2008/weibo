//
//  WBAppDelegate.m
//  8_31新浪微博
//
//  Created by 谢琛 on 14/8/31.
//  Copyright (c) 2014年 谢琛. All rights reserved.
//

#import "WBAppDelegate.h"
#import "WBTabBarController.h"

@implementation WBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    //重新显示状态栏
    application.statusBarHidden = NO;
    //创建windows
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor orangeColor];
    //创建根控制器
    WBTabBarController *tabBarVc = [[WBTabBarController alloc]init];
    tabBarVc.view.backgroundColor = [UIColor yellowColor];
    self.window.rootViewController = tabBarVc;
    //显示windows
    [self.window makeKeyAndVisible];
    return YES;
}
							

@end
