//
//  WBMessageViewController.m
//  8_31新浪微博
//
//  Created by 谢琛 on 14/9/14.
//  Copyright (c) 2014年 谢琛. All rights reserved.
//

#import "WBMessageViewController.h"

@interface WBMessageViewController ()

@end

@implementation WBMessageViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"发送私信" style:UIBarButtonItemStylePlain target:self action:@selector(composeBtnClick:)];
}
-(void)composeBtnClick:(UIBarButtonItem *)item
{
    WBLog(@"发送私信");
    
}

@end
