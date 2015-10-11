//
//  ZYMyLotteryViewController.m
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/9/29.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import "ZYMyLotteryViewController.h"
#import "UIImage+ZYImage.h"
#import "ZYSettingTableViewController.h"

@interface ZYMyLotteryViewController ()

@end

@implementation ZYMyLotteryViewController

#pragma mark - 初始化
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupLeftAndRightBtn];
    
    self.view.backgroundColor = ZYColor(244, 241, 223);
}

#pragma mark - 设置
- (void)setupLeftAndRightBtn
{
    // 设置导航条左边按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"Mylottery_FBMM_Barbutton"] forState:UIControlStateNormal];
    [btn setTitle:@"客服" forState:UIControlStateNormal];
    
    // 设置图片与文字间距
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, -5)];
    btn.titleLabel.font = [UIFont systemFontOfSize:18];
    [btn addTarget:self action:@selector(serviceClick) forControlEvents:UIControlEventTouchUpInside];
    
    // 按钮自动计算尺寸
    [btn sizeToFit];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    // 设置导航条右边按钮
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithOriginRenderingName:@"Mylottery_config"] style:UIBarButtonItemStylePlain target:self action:@selector(setting)];
}

#pragma mark - method
- (void)serviceClick
{
    ZYLogFunc;
}

- (void)setting
{
    [self.navigationController pushViewController:[[ZYSettingTableViewController alloc] init] animated:YES];
}

@end
