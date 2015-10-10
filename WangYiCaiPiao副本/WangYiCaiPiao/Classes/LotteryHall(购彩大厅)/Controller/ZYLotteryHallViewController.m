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
    
    UIImage *image = [UIImage imageWithOriginRenderingName:@"CS50_activity_image"];
    
    // 设置导航条左边按钮
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(activity)];
    
//    self.view.backgroundColor = [UIColor grayColor];
}

#pragma mark - 操作方法
- (void)activity
{
    [MBProgressHUD showHUDAddedTo:[[ZYPopMenuView alloc] init] animated:YES];
}

@end
