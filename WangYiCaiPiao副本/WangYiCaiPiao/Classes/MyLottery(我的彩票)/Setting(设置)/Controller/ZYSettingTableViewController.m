//
//  ZYSettingTableViewController.m
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/10/11.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import "ZYSettingTableViewController.h"
#import "ZYSettingItem.h"
#import "ZYSettingGroup.h"
#import "ZYTableViewCell.h"
#import "ZYSettingTableView.h"

@interface ZYSettingTableViewController ()<UITableViewDelegate>

/** 组数据 */
@property (nonatomic,strong) NSMutableArray *groups;

/** 自定义tableView */
@property (nonatomic,strong) ZYSettingTableView *settingTableView;

@end

@implementation ZYSettingTableViewController

#pragma mark - 初始化
- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZYSettingTableView *settingTableView = [[ZYSettingTableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView = settingTableView;
    
    self.navigationItem.title = @"设置";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"常见问题" style:UIBarButtonItemStyleDone target:self action:@selector(questionClick)];
    self.view.backgroundColor = ZYColor(244, 241, 223);
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"lamp"] forState:UIControlStateNormal];
//    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"lamp"] style:UIBarButtonItemStyleDone target:self action:@selector(backClick)];
    
    // 去除Cell分割线
//    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    // 添加数据
    [self setupDataSource];
    
    // 设置分组间距
    self.tableView.contentInset = UIEdgeInsetsMake(-20, 0, 0, 0);
    self.tableView.sectionHeaderHeight = 0;
}

#pragma mark - 懒加载
- (NSMutableArray *)groups
{
    if (!_groups) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}

#pragma mark - 设置数据
- (void)setupDataSource
{
    [self setupGroup1];
    [self setupGroup2];
    [self setupGroup3];
}

- (void)setupGroup1
{
    ZYSettingGroup *group = [[ZYSettingGroup alloc] init];
    ZYSettingItem *item = [ZYSettingItem itemWithIcon:@"RedeemCode" title:@"使用兑换码"];
    
    group.items = @[item];
    [self.groups addObject:group];
}

- (void)setupGroup2
{
    ZYSettingGroup *group = [[ZYSettingGroup alloc] init];
    ZYSettingItem *item1 = [ZYSettingItem itemWithIcon:@"MorePush" title:@"推送和提醒"];
    ZYSettingItem *item2 = [ZYSettingItem itemWithIcon:@"more_homeshake" title:@"摇一摇机选"];
    ZYSettingItem *item3 = [ZYSettingItem itemWithIcon:@"sound_Effect" title:@"声音效果"];
    ZYSettingItem *item4 = [ZYSettingItem itemWithIcon:@"More_QuanZi_NetFlowSwitchImage" title:@"圈子仅WiFi加载图片"];
    
    group.items = @[item1, item2, item3, item4];
    [self.groups addObject:group];
}

- (void)setupGroup3
{
    ZYSettingGroup *group = [[ZYSettingGroup alloc] init];
    ZYSettingItem *item1 = [ZYSettingItem itemWithIcon:@"MoreShare" title:@"推荐给朋友"];
    ZYSettingItem *item2 = [ZYSettingItem itemWithIcon:@"MoreNetease" title:@"产品推荐"];
    ZYSettingItem *item3 = [ZYSettingItem itemWithIcon:@"MoreAbout" title:@"关于"];
    
    group.items = @[item1, item2, item3];
    [self.groups addObject:group];
}

#pragma mark - 监听方法
- (void)questionClick
{
    ZYLogFunc;
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    ZYSettingGroup *group = self.groups[section];
    return group.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZYTableViewCell *cell = [ZYTableViewCell cellWithTableView:tableView];
    ZYSettingGroup *group = self.groups[indexPath.section];
    ZYSettingItem *item = group.items[indexPath.row];
    
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
