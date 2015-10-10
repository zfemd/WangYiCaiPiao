//
//  ZYTabBar.h
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/9/29.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZYTabBar;
@protocol ZYTabBarDelgate <NSObject>

@optional
- (void)tabBar:(ZYTabBar *)tabBar didClickBtn:(NSInteger)index;

@end

@interface ZYTabBar : UIView

/** items:UITabBarItem模型 */
@property (nonatomic, strong) NSArray *items;


@property (nonatomic, weak) id<ZYTabBarDelgate> delegate;

@end
