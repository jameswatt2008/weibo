//
//  WBTabBar.h
//  8_31新浪微博
//
//  Created by 谢琛 on 14/8/31.
//  Copyright (c) 2014年 谢琛. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WBTabBar;
@protocol WBTabBarDelegate <NSObject>

-(void) tabBar:(WBTabBar *)tabBar from:(NSInteger)from to:(NSInteger)to;

@end

@interface WBTabBar : UIView

-(void)addTabBarButton:(UITabBarItem *)item;
@property (nonatomic,weak) id <WBTabBarDelegate> delegate;

@end
