//
//  WBTabBar.m
//  8_31新浪微博
//
//  Created by 谢琛 on 14/8/31.
//  Copyright (c) 2014年 谢琛. All rights reserved.
//

#import "WBTabBar.h"
#import "WBTabBarButton.h"
#import "WBTabBarController.h"
@interface WBTabBar()

@property (nonatomic,weak) UIButton *plusBtn;
@property (nonatomic,strong)NSMutableArray *tabBarButtons;

@property (nonatomic,weak) WBTabBarButton *currentSelecteBtn;

@end
@implementation WBTabBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setupBg];
        [self setupPlusBtn];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(NSMutableArray *)tabBarBUttons{
    if (! _tabBarButtons) {
        _tabBarButtons = [NSMutableArray array];
    }
    return _tabBarButtons;
}
//添加加号按钮
-(void)setupPlusBtn
{
    UIButton *plusBtn = [[UIButton alloc]init];
    
    [plusBtn setBackgroundImage:[UIImage imageWithName:@"tabbar_compose_button"] forState:UIControlStateNormal];
    [plusBtn setBackgroundImage:[UIImage imageWithName:@"tabbar_compose_button_hignlighted"] forState:UIControlStateHighlighted];
    [plusBtn setImage:[UIImage imageWithName:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
    [plusBtn setImage:[UIImage imageWithName:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateHighlighted];
    [self addSubview:plusBtn];
    self.plusBtn = plusBtn;
}

-(void)addTabBarButton:(UITabBarItem *)item
{
    WBTabBarButton *btn = [[WBTabBarButton alloc]init];
//    [btn setImage:item.image forState:UIControlStateNormal];
//    [btn setImage:item.selectedImage forState:UIControlStateSelected];
//    [btn setTitle:item.title forState:UIControlStateNormal];
    btn.item =item;
    btn.tag = self.tabBarButtons.count;
    
    [btn addTarget:self action:@selector(btnOnClick :) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
    [self.tabBarBUttons addObject:btn];
    if (self.tabBarButtons.count == 1) {
        [self btnOnClick:btn];
    }
    
}
-(void)setupBg
{

    if (iOS7) {
        self.backgroundColor =[UIColor whiteColor];
        
    }else
    {
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithName:@"tabbar_backround"]];
    }
}

-(void)setupTabBarBtnFrame
{
    NSUInteger count = self.tabBarBUttons.count;
    CGFloat btnWidth = self.width /(count +1);
    CGFloat btnHeight = self.height;
    for (int i = 0; i < count; i++) {
        UIButton *btn = self.tabBarBUttons[i];
        CGFloat btnW = btnWidth;
        CGFloat btnH = btnHeight;
        CGFloat btnY = 0;
        CGFloat btnX = i*btnW;
        if (i>= count / 2) {
            btnX = (i + 1)*btnW;
        }
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
        
    }
    
}

-(void)setupPlusBtnFrame
{
    CGSize currentSize = self.plusBtn.currentBackgroundImage.size;
    self.plusBtn.width = currentSize.width;
    self.plusBtn.height = currentSize.height;
    self.plusBtn.centerX = self.width * 0.5;
    self.plusBtn.centerY = self.height * 0.5;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    
    [self setupPlusBtnFrame];
    [self setupTabBarBtnFrame];
    
    
}

-(void)btnOnClick:(WBTabBarButton *)btn
{
    if ([self.delegate respondsToSelector:@selector(tabBar:from:to:)]) {
        [self.delegate tabBar:self from:self.currentSelecteBtn.tag to:btn.tag];
    }
    
    self.currentSelecteBtn.selected = NO;
    btn.selected = YES;
    self.currentSelecteBtn = btn;
}
@end
