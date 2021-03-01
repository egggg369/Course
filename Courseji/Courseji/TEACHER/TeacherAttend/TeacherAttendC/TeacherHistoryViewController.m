//
//  TeacherHistoryViewController.m
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/24.
//  Copyright © 2021 无. All rights reserved.
//

#import "TeacherHistoryViewController.h"
#import "TeacherHistoryView.h"
#import "TeacherPageTableViewCell.h"

@interface TeacherHistoryViewController ()

@end

@implementation TeacherHistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _teacherHistoryView = [[TeacherHistoryView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [_teacherHistoryView viewInit];
    [self.view addSubview:_teacherHistoryView];
    _teacherHistoryView.tableView.delegate = self;
    _teacherHistoryView.tableView.dataSource = self;
    
    _titleArr = [[NSMutableArray alloc] init];
    [_titleArr addObject:@"病假"];
    [_titleArr addObject:@"事假"];
    
    _nameArr = [[NSMutableArray alloc] init];
    [_nameArr addObject:@"李明"];
    [_nameArr addObject:@"张三"];
    
    _timeArr = [[NSMutableArray alloc] init];
    [_timeArr addObject:@"2020-01-13至2020-01-14"];
    [_timeArr addObject:@"2020-12-24至1010-12-25"];
    
    _reasonArr = [[NSMutableArray alloc] init];
    [_reasonArr addObject:@"发烧感冒"];
    [_reasonArr addObject:@"家里有事"];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_timeArr count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 160;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TeacherPageTableViewCell *pagecell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    pagecell.titleLabel.text = _titleArr[indexPath.row];
    pagecell.nameLabel.text = _nameArr[indexPath.row];
    pagecell.timeLabel.text = _timeArr[indexPath.row];
    pagecell.reasonLabel.text = _reasonArr[indexPath.row];
    pagecell.signLabel.backgroundColor = [UIColor colorWithRed:49/255.0 green:182/255.0 blue:105/255.0 alpha:1];
    pagecell.signLabel.text = @" 已批准";
    pagecell.nameImage.image = [UIImage imageNamed:@"上课"];
    pagecell.timeImage.image = [UIImage imageNamed:@"时钟"];
    pagecell.reasonImage.image = [UIImage imageNamed:@"日历"];
    pagecell.selectionStyle = 0;
    return pagecell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
