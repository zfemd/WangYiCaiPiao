//
//  ZYArenaNavigationController.m
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/10/10.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import "ZYArenaNavigationController.h"

@interface ZYArenaNavigationController ()

@end

@implementation ZYArenaNavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 设置当导航栏只是这个类的时候才修改
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
    
    UIImage *image = [UIImage imageNamed:@"NLArenaNavBar64"];
//    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    
    [bar setBackgroundImage : image forBarMetrics:UIBarMetricsDefault];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
