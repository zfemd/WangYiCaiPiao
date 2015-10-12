//
//  ZYDiscoverItem.h
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/10/12.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYDiscoverItem : NSObject

/** 图片 */
@property (nonatomic,copy) NSString *icon;
/** 标题 */
@property (nonatomic,copy) NSString *title;
/** 描述 */
@property (nonatomic,copy) NSString *subtitle;

- (instancetype)initWithIcon:(NSString *)icon title:(NSString *)title subtitle:(NSString *)subtitle;
+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title subtitle:(NSString *)subtitle;

@end
