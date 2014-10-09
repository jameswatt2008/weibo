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
/**
 *  通知外界从哪个按钮切换到了哪个按钮
 *
 *  @param from 上一次选中按钮的tag
 *  @param to   当前选中按钮的tag
 */

-(void) tabBar:(WBTabBar *)tabBar from:(NSInteger)from to:(NSInteger)to;

@end

@interface WBTabBar : UIView

/**
 *  根据模型创建选项卡
 *
 *  @param item 模型数据(标题/默认状态的图片/选中状态的图片)
 */
-(void)addTabBarButton:(UITabBarItem *)item;
@property (nonatomic,weak) id <WBTabBarDelegate> delegate;

@end
