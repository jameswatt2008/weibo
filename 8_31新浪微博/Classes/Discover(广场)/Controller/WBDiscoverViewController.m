//
//  WBDiscoverViewController.m
//  8_31新浪微博
//
//  Created by 谢琛 on 14/9/14.
//  Copyright (c) 2014年 谢琛. All rights reserved.
//

#import "WBDiscoverViewController.h"
#import "UIImage+XC.h"
#import "WBSearchBar.h"
@interface WBDiscoverViewController ()

@end

@implementation WBDiscoverViewController


- (void)viewDidLoad
{
    NSLog(@"dddffffYYY");
    [super viewDidLoad];
//    
//    //添加一个搜索框
//    UISearchBar *searchBar = [[UISearchBar alloc]init];
//    //xy无效
//    searchBar.frame = CGRectMake(0, 0, 300, 35);
//    searchBar.backgroundImage = [UIImage imageWithName:@"searchbar_textfield_background"];
//    self.navigationItem.titleView = searchBar;
//    UITextField *searchBar = [[UITextField alloc]init];
//    //searchBar.borderStyle = UITextBorderStyleRoundedRect;边框样式
//    searchBar.background = [UIImage resizeableImageWithName:@"searchbar_textfield_background"];
////    searchBar.textAlignment = NSTextAlignmentCenter;设置水平居中
//    searchBar.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
//    //设置清楚按钮
//    searchBar.clearButtonMode = UITextFieldViewModeWhileEditing;
//    //添加放大镜
//    UIImageView *search = [[UIImageView alloc]initWithImage:[UIImage imageWithName:@"searchbar_textfield_search_icon"]];
//    //[searchBar addSubview:search];
//    //设置放大镜为leftview
//    search.width = 30;
//    search.contentMode = UIViewContentModeCenter;//图片居中
//    
//    searchBar.leftView = search;
//    searchBar.leftViewMode = UITextFieldViewModeAlways;
//    //设置提示问题
//    searchBar.placeholder = @"请输入要搜索的内容";
//   // searchBar.textColor = [UIColor grayColor];
//    searchBar.font = [UIFont systemFontOfSize:13];
   
    WBSearchBar *searchBar  = [[WBSearchBar alloc]init];

    searchBar.placeholder = @"请输入要搜索的内容";
    searchBar.frame = CGRectMake(0, 0, 300, 35);
    self.navigationItem.titleView = searchBar;


}


@end
