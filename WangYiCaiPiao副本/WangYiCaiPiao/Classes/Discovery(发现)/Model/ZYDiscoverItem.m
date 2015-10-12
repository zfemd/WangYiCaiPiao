//
//  ZYDiscoverItem.m
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/10/12.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import "ZYDiscoverItem.h"

@implementation ZYDiscoverItem

- (instancetype)initWithIcon:(NSString *)icon title:(NSString *)title subtitle:(NSString *)subtitle
{
    if (self = [super init]) {
        self.icon = icon;
        self.title = title;
        self.subtitle = subtitle;
    }
    return self;
}

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title subtitle:(NSString *)subtitle
{
    return [[self alloc] initWithIcon:icon title:title subtitle:subtitle];
}

@end
