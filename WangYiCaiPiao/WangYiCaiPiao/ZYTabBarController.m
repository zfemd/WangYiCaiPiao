//
//  ZYTabBarController.m
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/9/29.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import "ZYTabBarController.h"
#import "ZYLotteryHallViewController.h"
#import "ZYArenaViewController.h"
#import "ZYDiscoveryViewController.h"
#import "ZYHistoryViewController.h"
#import "ZYMyLotteryViewController.h"
#import "ZYTabBar.h"
#import "ZYNavigationController.h"

@interface ZYTabBarController ()
/** 所有barButton */
@property (nonatomic,strong) NSMutableArray *items;
@end

@implementation ZYTabBarController

#pragma mark - 初始化
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupChildVcs];
    [self setupTabBar];
}

#pragma mark - 懒加载
- (NSMutableArray *)items
{
    if (_items == nil) {
        _items = [NSMutableArray array];
    }
    return _items;
}

#pragma mark - 添加控件
/**
 *  自定义tabBar
 */
- (void)setupTabBar
{
    // 1.移除系统tabBar
    [self.tabBar removeFromSuperview];
    
    // 2.添加自定义tabBar
    ZYTabBar *tabBar = [[ZYTabBar alloc] init];
    tabBar.backgroundColor = [UIColor greenColor];
//    tabBar.items = self.items;
    tabBar.frame = self.tabBar.frame;
    
    // 3.将自定义tabBar添加到视图上
    [self.view addSubview:tabBar];
}

/**
 *  添加所有子控制器
 *
 *  @param vc            控制器
 *  @param image         正常状态下图标
 *  @param selectedImage 选中状态下图标
 */
- (void)setupChildVc:(UIViewController *)vc image:(NSString *)image selectedImage:(NSString *)selectedImage title:(NSString *)title
{
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    vc.navigationItem.title = title;
    
    [self.items addObject:vc.tabBarItem];
    [self addChildViewController:vc];
    
    // 包装一个导航控制器
    UINavigationController *nav = [[ZYNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}

- (void)setupChildVcs
{
    [self setupChildVc:[[ZYLotteryHallViewController alloc] init] image:@"TabBar_LotteryHall_new" selectedImage:@"TabBar_LotteryHall_selected_new" title:@"购彩大厅"];
    [self setupChildVc:[[ZYArenaViewController alloc] init] image:@"TabBar_Arena_new" selectedImage:@"TabBar_Arena_selected_new" title:nil];
    [self setupChildVc:[[ZYDiscoveryViewController alloc] init] image:@"TabBar_Discovery_new" selectedImage:@"TabBar_Discovery_selected_new" title:@"发现"];
    [self setupChildVc:[[ZYHistoryViewController alloc] init] image:@"TabBar_History_new" selectedImage:@"TabBar_History_selected_new" title:@"中奖信息"];
    [self setupChildVc:[[ZYMyLotteryViewController alloc] init] image:@"TabBar_MyLottery_new" selectedImage:@"TabBar_MyLottery_selected_new" title:@"我的彩票"];
}


@end
