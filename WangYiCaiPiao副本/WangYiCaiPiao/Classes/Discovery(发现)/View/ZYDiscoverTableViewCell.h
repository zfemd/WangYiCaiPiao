//
//  ZYDiscoverTableViewCell.h
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/10/12.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZYDiscoverItem;

@interface ZYDiscoverTableViewCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;
/** cell数据 */
@property (nonatomic,strong) ZYDiscoverItem *item;

@end
