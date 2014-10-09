//
//  WBProfileViewController.m
//  8_31新浪微博
//
//  Created by 谢琛 on 14/9/14.
//  Copyright (c) 2014年 谢琛. All rights reserved.
//

#import "WBProfileViewController.h"

@interface WBProfileViewController ()

@end

@implementation WBProfileViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"设置" style:UIBarButtonItemStylePlain target:self action:@selector(composeBtnClick:)];
}
-(void)composeBtnClick:(UIBarButtonItem *)item
{
    WBLog(@"发送私信");
}

@end
