//
//  ZYTableViewCell.m
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/10/11.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import "ZYTableViewCell.h"
#import "ZYSettingItem.h"

@interface ZYTableViewCell ()

@end

@implementation ZYTableViewCell

- (void)setItem:(ZYSettingItem *)item
{
    _item = item;
    
    self.imageView.image = [UIImage imageNamed:item.icon];
    self.textLabel.text = item.title;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"settingCell";
    
    ZYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (!cell) {
        cell = [[ZYTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    
    return cell;
}

@end
