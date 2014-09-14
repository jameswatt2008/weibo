//
//  WBTabBarController.m
//  8_31新浪微博
//
//  Created by 谢琛 on 14/8/31.
//  Copyright (c) 2014年 谢琛. All rights reserved.
///Users/darkey/Documents/代码/8_31/8_31新浪微博/8_31新浪微博/Classes/Main(主要)/Controller/WBTabBarController.m

#import "WBTabBarController.h"
#import "WBDiscoverViewController.h"
#import "WBHomeViewController.h"
#import "WBMessageViewController.h"
#import "WBProfileViewController.h"
#import "WBImageTool.h"
#import "WBTabBar.h"
@interface WBTabBarController()<WBTabBarDelegate>

@property (nonatomic,weak) WBTabBar *customTabBar;
@end


@implementation WBTabBarController



-(void)viewDidLoad{
    [super viewDidLoad];
    WBTabBar *customTabBar = [[WBTabBar alloc]init];
    
    customTabBar.frame = self.tabBar.frame;
    [self.view addSubview:customTabBar];
    self.customTabBar = customTabBar;
    self.customTabBar.delegate = self;
    [self.tabBar removeFromSuperview];
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        WBHomeViewController *home = [[WBHomeViewController alloc]init];
        [self addChildController:home title:@"首页" norImage:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
        // 2.消息
        WBMessageViewController *message = [[WBMessageViewController alloc] init];
        [self addChildController:message title:@"消息" norImage:@"tabbar_message_center" selectedImage:@"tabbar_message_center_selected"];
        // 3.广场
        WBDiscoverViewContreller *discover =[[WBDiscoverViewContreller alloc]init];
        [self addChildController:discover title:@"广场" norImage:@"tabbar_discover" selectedImage:@"tabbar_discover_selected"];
        // 4.我
        WBProfileViewController *profile = [[WBProfileViewController alloc] init];
        NSString *norImageName = @"tabbar_profile";
        NSString *selImageName = @"tabbar_profile_selected";
        [self addChildController:profile title: @"我" norImage:norImageName      selectedImage:selImageName];
        
    }
    
    return self;
}
- (void)addChildController:(UIViewController *)childVc title:(NSString *)title norImage:(NSString *)norImage selectedImage:(NSString *)selectedImage
{
    childVc.view.backgroundColor = WBRandomColor;
    childVc.tabBarItem.title = title;
  //  self.tabBar.tintColor = [UIColor greenColor];
    childVc.tabBarItem.image = [UIImage imageWithName:norImage];
    UIImage *selImage = [UIImage imageWithName:selectedImage];
   // childVc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    // 告诉系统不要按照tintColor渲染图片
    /*
     UIImageRenderingModeAutomatic,      // 按照系统当前的上下文环境以及当前的tintColor渲染
     UIImageRenderingModeAlwaysOriginal, // 原样显示, 不渲染
     UIImageRenderingModeAlwaysTemplate, // 按照当前的tintColor渲染
     */
    if(iOS7){
        selImage = [selImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    childVc.tabBarItem.selectedImage = selImage;
    [self addChildViewController:childVc];
    
    [self.customTabBar addTabBarButton:childVc.tabBarItem];

 }

-(void) tabBar:(WBTabBar *)tabBar from:(NSInteger)from to:(NSInteger)to;
{
    WBLog(@"from = %d, to = %d",from,to);
    self.selectedIndex = to;
}

@end
