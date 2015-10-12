
//
//  ZYDiscoveryViewController.m
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/9/29.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import "ZYDiscoveryViewController.h"
#import "ZYDiscoverTableView.h"
#import "ZYDiscoverItem.h"
#import "ZYDiscoverGroup.h"
#import "ZYDiscoverTableViewCell.h"

@interface ZYDiscoveryViewController ()

/** 组数据 */
@property (nonatomic,strong) NSMutableArray *groups;

@end

@implementation ZYDiscoveryViewController

#pragma mark - 初始化
- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZYDiscoverTableView *tableView = [[ZYDiscoverTableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView = tableView;
    
    self.view.backgroundColor = ZYColor(244, 241, 223);
    
    self.tableView.contentInset = UIEdgeInsetsMake(-34, 0, 0, 0);
    self.tableView.sectionHeaderHeight = 0;
    self.tableView.sectionFooterHeight = 8;
    self.tableView.rowHeight = 60;
    
    [self setupDataSource];
}

#pragma mark - 添加数据
- (void)setupDataSource
{
    [self setupGroup1];
    [self setupGroup2];
    [self setupGroup3];
    [self setupGroup4];
    [self setupGroup5];
}

- (void)setupGroup1
{
    ZYDiscoverGroup *group = [[ZYDiscoverGroup alloc] init];
    ZYDiscoverItem *item = [ZYDiscoverItem itemWithIcon:@"icon_lottery_girl" title:@"欢乐炸金花" subtitle:@"玩炸金花 赚话费"];
    group.items = @[item];
    [self.groups addObject:group];
}

- (void)setupGroup2
{
    ZYDiscoverGroup *group = [[ZYDiscoverGroup alloc] init];
    ZYDiscoverItem *item = [ZYDiscoverItem itemWithIcon:@"luckBetIcon" title:@"幸运选号" subtitle:@"引爆财运 命中注定中大奖"];
    group.items = @[item];
    [self.groups addObject:group];
}

- (void)setupGroup3
{
    ZYDiscoverGroup *group = [[ZYDiscoverGroup alloc] init];
    ZYDiscoverItem *item1 = [ZYDiscoverItem itemWithIcon:@"newsIcon" title:@"资讯" subtitle:@"网易独家推荐每日更新"];
    ZYDiscoverItem *item2 = [ZYDiscoverItem itemWithIcon:@"circleIcon" title:@"圈子" subtitle:@"交流互动 分享彩票的乐趣"];
    group.items = @[item1, item2];
    [self.groups addObject:group];
}

- (void)setupGroup4
{
    ZYDiscoverGroup *group = [[ZYDiscoverGroup alloc] init];
    ZYDiscoverItem *item = [ZYDiscoverItem itemWithIcon:@"MyInfoFillTitleImage" title:@"乐得美好生活" subtitle:@"电影票、保险、贵金属、话费等"];
    group.items = @[item];
    [self.groups addObject:group];
}

- (void)setupGroup5
{
    ZYDiscoverGroup *group = [[ZYDiscoverGroup alloc] init];
    ZYDiscoverItem *item = [ZYDiscoverItem itemWithIcon:@"groupBuyIcon" title:@"合买" subtitle:@"跟着高手买 奖金一起分"];
    group.items = @[item];
    [self.groups addObject:group];
}

#pragma mark - 懒加载
- (NSMutableArray *)groups
{
    if (!_groups) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    ZYDiscoverGroup *group = self.groups[section];
    return group.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZYDiscoverTableViewCell *cell = [ZYDiscoverTableViewCell cellWithTableView:tableView];
    ZYDiscoverGroup *group = self.groups[indexPath.section];
    ZYDiscoverItem *item = group.items[indexPath.row];
    
    cell.item = item;
    
    return cell;
}

#pragma mark - <UITableViewDelegate>
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 取消Cell选中状态
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // 点击哪行执行下面代码
}

@end
