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
#import "ZYArenaNavigationController.h"

@interface ZYTabBarController ()<ZYTabBarDelgate>

@property (nonatomic, strong) NSMutableArray *items;

@end

@implementation ZYTabBarController

- (NSMutableArray *)items
{
    if (_items == nil) {
        _items = [NSMutableArray array];
    }
    return _items;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
    [self setUpTabBar];
}

#pragma mark  -XMGTabBarDelgate方法
// 当点击tabBar上的条的时候调用
- (void)tabBar:(ZYTabBar *)tabBar didClickBtn:(NSInteger)index
{
    // 切换界面
    self.selectedIndex = index;
}

#pragma mark - 自定义tabBar
- (void)setUpTabBar
{
    // 1.移除系统的tabBar,移除系统自带的tabBarButton
    [self.tabBar removeFromSuperview];
    
    // 2.添加自己的tabBar
    ZYTabBar *tabBar = [[ZYTabBar alloc] init];
    
    tabBar.delegate = self;
    
    // 传对应子控制器的tabBarItem数组
    tabBar.items = self.items;
    
    tabBar.backgroundColor = [UIColor blackColor];
    
    tabBar.frame = self.tabBar.frame;
    
    [self.view addSubview:tabBar];
    
}

#pragma mark - 添加所有子控制器
- (void)setUpAllChildViewController
{
    // 购彩大厅
    [self setupChildViewController:[[ZYLotteryHallViewController alloc] init] image:@"TabBar_LotteryHall" selectedImage:@"TabBar_LotteryHall_selected" title:nil];
    
    // 竞技场
    [self setupChildViewController:[[ZYArenaViewController alloc] init] image:@"TabBar_Arena" selectedImage:@"TabBar_Arena_selected" title:@"足球"];
    
    // 发现
    [self setupChildViewController:[[ZYDiscoveryViewController alloc] init] image:@"TabBar_Discovery" selectedImage:@"TabBar_Discovery_selected" title:@"发现"];
    
    // 开奖信息
    [self setupChildViewController:[[ZYHistoryViewController alloc] init] image:@"TabBar_History" selectedImage:@"TabBar_History_selected" title:@"开奖信息"];
    
    // 我的彩票
    [self setupChildViewController:[[ZYMyLotteryViewController alloc] init] image:@"TabBar_MyLottery" selectedImage:@"TabBar_MyLottery_selected" title:@"我的彩票"];
}

#pragma mark - 添加一个子控制器，并且设置对应的内容
- (void)setupChildViewController:(UIViewController *)vc image:(NSString *)image selectedImage:(NSString *)selectedImage title:(NSString *)title
{
    // 设置导航条
    vc.navigationItem.title = title;
    
    // 设置tabBarButton的图片，tabBarButton的内容由对应的子控制器的tabBarItem
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    
    // 保存对应子控制器的UITabBarItem
    [self.items addObject:vc.tabBarItem];
    
    // 包装成导航控制器
    UINavigationController *nav = [[ZYNavigationController alloc] initWithRootViewController:vc];
    
    if ([vc isKindOfClass:[ZYArenaViewController class]]) {
//        nav = [[UINavigationController alloc] initWithRootViewController:vc];
//        [nav.navigationItem.title sizeWithFont:[UIFont systemFontOfSize:10]];
    }
    
    [self addChildViewController:nav];
}


@end
