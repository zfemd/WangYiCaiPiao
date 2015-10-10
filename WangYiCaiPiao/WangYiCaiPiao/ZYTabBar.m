//
//  ZYTabBar.m
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/9/29.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import "ZYTabBar.h"
#import "ZYTabBarButton.h"

@implementation ZYTabBar

- (void)setItems:(NSArray *)items
{
    _items = items;
    
    for (UITabBarItem *item in items) {
        UIButton *btn = [ZYTabBarButton buttonWithType:UIButtonTypeCustom];
        
        // 设置内容
        [btn setBackgroundImage:item.image forState:UIControlStateNormal];
        [btn setBackgroundImage:item.selectedImage forState:UIControlStateSelected];
        
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        
        btn.tag = self.subviews.count;
        
        if (self.subviews.count == 0) {
            [self btnClick:btn];
        }
        [self addSubview:btn];
    }
}

- (void)btnClick:(UIButton *)button
{
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    int count = (int)self.subviews.count;
    
    CGFloat btnW = self.bounds.size.width / count;
    CGFloat btnH = self.bounds.size.height;
    CGFloat btnY = 0;
    CGFloat btnX = 0;
    
    for (int i = 0; i < count; i++) {
        UIButton *btn = self.subviews[i];
        
        btnX = i * btnW;
        
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
    }
}

@end
