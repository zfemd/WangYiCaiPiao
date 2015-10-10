//
//  ZYArenaViewController.m
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/9/29.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import "ZYArenaViewController.h"

@interface ZYArenaViewController ()

@end

@implementation ZYArenaViewController

#pragma mark - 初始化
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupNavgationTitle];
    
//    self.navigationController.navigationBarHidden = YES;
}

- (void)loadView
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:[UIApplication sharedApplication].keyWindow.bounds];
    imageView.image = [UIImage imageNamed:@"NLArenaBackground"];
    
    self.view = imageView;
}

#pragma mark - 设置导航条上title
- (void)setupNavgationTitle
{
    // 设置导航条上的title
    UISegmentedControl *sc = [[UISegmentedControl alloc] initWithItems:@[@"足球", @"篮球"]];
    
    // sc正常情况下的显示
    [sc setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    // sc被选中时的显示
    [sc setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    
    // 设置文字颜色
    [sc setTintColor:[UIColor colorWithRed:0 green:142/255.0 blue:143/255.0 alpha:1]];
    
    // 设置选中时文字的颜色
    [sc setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]} forState:UIControlStateSelected];
    
    sc.selectedSegmentIndex = 0;

    // 添加sc到导航条
    self.navigationItem.titleView = sc;
}

@end
