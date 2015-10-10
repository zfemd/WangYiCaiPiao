//
//  ZYNavigationController.m
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/9/30.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import "ZYNavigationController.h"

@interface ZYNavigationController ()

@end

@implementation ZYNavigationController

// 当前类或者子类第一次使用它的时候调用
// 初始化类
+ (void)initialize
{
    // 获取当前类下的导航条
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    // 设置导航条文字颜色
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:22];
    [bar setTitleTextAttributes:dict];
}

@end
