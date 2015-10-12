//
//  ZYSettingItem.m
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/10/11.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import "ZYSettingItem.h"

@implementation ZYSettingItem

- (instancetype)initWithIcon:(NSString *)icon title:(NSString *)title
{
    if (self = [super init]) {
        self.icon = icon;
        self.title = title;
    }
    return self;
}

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title
{
    return [[self alloc ]initWithIcon:icon title:title];
}

@end
