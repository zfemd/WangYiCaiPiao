//
//  ZYTableViewCell.h
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/10/11.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZYSettingItem;

@interface ZYTableViewCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;

/** cell数据模型 */
@property (nonatomic,strong) ZYSettingItem *item;

@end
