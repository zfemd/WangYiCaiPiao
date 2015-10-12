//
//  ZYDiscoverTableViewCell.m
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/10/12.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import "ZYDiscoverTableViewCell.h"
#import "ZYDiscoverItem.h"

@implementation ZYDiscoverTableViewCell

- (void)setItem:(ZYDiscoverItem *)item
{
    _item = item;
    
    self.imageView.image = [UIImage imageNamed:item.icon];
    self.textLabel.text = item.title;
    self.detailTextLabel.text = item.subtitle;
}

// 设置右侧箭头显示
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    return self;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"discoverCell";
    ZYDiscoverTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[ZYDiscoverTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
}

@end
