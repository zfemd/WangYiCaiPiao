//
//  ZYSettingItem.h
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/10/11.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYSettingItem : NSObject

/** 图标 */
@property (nonatomic,copy) NSString *icon;
/** 标题 */
@property (nonatomic,copy) NSString *title;

- (instancetype)initWithIcon:(NSString *)icon title:(NSString *)title;
+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title;

@end
