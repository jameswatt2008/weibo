//
//  WBTabBarButton.m
//  8_31新浪微博
//
//  Created by 谢琛 on 14/9/2.
//  Copyright (c) 2014年 谢琛. All rights reserved.
//

#import "WBTabBarButton.h"

@implementation WBTabBarButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView.contentMode = UIViewContentModeCenter;
        
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        
        self.titleLabel.font = [UIFont systemFontOfSize:13];
        
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];
       
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
-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imageX = 0;
    CGFloat imageY = 0;
    CGFloat imageW = self.width;
    CGFloat imageH = self.height * 0.6;
    return CGRectMake(imageX, imageY, imageW, imageH);
}
- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleX = 0;
    CGFloat titleY = self.height * 0.6;
    CGFloat titleW = self.width;
    CGFloat titleH = self.height - titleY;
    return CGRectMake(titleX, titleY, titleW, titleH);
}
-(void)setItem:(UITabBarItem *)item
{
    _item = item;
    [self setImage:item.image forState:UIControlStateNormal];
    [self setImage:item.selectedImage forState:UIControlStateSelected];
    [self setTitle:item.title forState:UIControlStateNormal];
}
-(void)setHighlighted:(BOOL)highlighted
{
    
}
@end
