//
//  ZYLotteryHallViewController.m
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/9/29.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import "ZYLotteryHallViewController.h"
#import "UIImage+ZYImage.h"
#import <MBProgressHUD.h>
#import "ZYPopMenuView.h"

@interface ZYLotteryHallViewController ()

@end

@implementation ZYLotteryHallViewController

#pragma mark - 初始化
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageWithOriginRenderingName:@"hall_title_logo"]];
    
    UIImage *image = [UIImage imageWithOriginRenderingName:@"CS50_activity_image"];
    
    // 设置导航条左边按钮
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(activity)];
    
    // 设置导航条右边按钮
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithOriginRenderingName:@"hall_activity_icon1"] style:UIBarButtonItemStylePlain target:self action:@selector(surpriseClick)];
    
//    self.view.backgroundColor = [UIColor grayColor];
    self.view.backgroundColor = ZYColor(244, 241, 223);
}

#pragma mark - 操作方法
- (void)activity
{
    [MBProgressHUD showHUDAddedTo:[[ZYPopMenuView alloc] init] animated:YES];
}

- (void)surpriseClick
{
    // 判断是否登录, 如果没有登录进行登录操作
    ZYLogFunc;
}

@end
