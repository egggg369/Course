//
//  TeacherDetailViewController.m
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/23.
//  Copyright © 2021 无. All rights reserved.
//

#import "TeacherDetailViewController.h"
#import "TeacherDetailTableViewCell.h"
#import "TeacherApplyPageController.h"
#import <Masonry.h>


@interface TeacherDetailViewController ()

@end

@implementation TeacherDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _teacherDetailView = [[TeacherDetailView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 60)];
    [_teacherDetailView viewInit];
    [self.view addSubview:_teacherDetailView];
    _teacherDetailView.tableView.delegate = self;
    _teacherDetailView.tableView.dataSource = self;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section == 0) {
        return 2;
    }else {
        return 4;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 65;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 36;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if(section == 0) {
        UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 42)];
        headView.backgroundColor = [UIColor colorWithRed:197/255.0 green:224/255.0 blue:255/255.0 alpha:1];
        UILabel *label = [[UILabel alloc] init];
        label.text = [NSString stringWithFormat:@"%d未签到", 2];
        label.textAlignment = NSTextAlignmentLeft;
        label.textColor = [UIColor blackColor];
        [headView addSubview:label];
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(headView.mas_left).offset(20);
            make.top.mas_equalTo(headView.mas_top).offset(4);
            make.width.equalTo(@100);
            make.height.equalTo(@22);
        }];
        return headView;
    }else {
        UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 42)];
        headView.backgroundColor = [UIColor colorWithRed:197/255.0 green:224/255.0 blue:255/255.0 alpha:1];
        UILabel *label = [[UILabel alloc] init];
        label.text = [NSString stringWithFormat:@"%d签到", 4];
        label.textAlignment = NSTextAlignmentLeft;
        label.textColor = [UIColor blackColor];
        [headView addSubview:label];
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(headView.mas_left).offset(20);
            make.top.mas_equalTo(headView.mas_top).offset(4);
            make.width.equalTo(@100);
            make.height.equalTo(@22);
        }];
        return headView;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TeacherDetailTableViewCell *detailTableViewCell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        if(indexPath.section == 0) {
            //detailTableViewCell.imageview = [UIImage imageNamed:[NSString stringWithFormat:@"临时图"]];
            NSArray *attendArr = @[@"莉丝", @"张三"];
            detailTableViewCell.nameLabel.text = attendArr[indexPath.row];
            //detailTableViewCell.selectionStyle = 0;
            
        }else {
            //detailTableViewCell.imageview = [UIImage imageNamed:@"临时图"];
            NSArray *absentArr = @[@"李明", @"李华", @"李四", @"王武"];
            detailTableViewCell.nameLabel.text = absentArr[indexPath.row];
            //detailTableViewCell.selectionStyle = 0;
        }
    return detailTableViewCell;
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
