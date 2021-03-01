//
//  AttendViewController.m
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/16.
//  Copyright © 2021 无. All rights reserved.
//

#import "AttendViewController.h"
#import "AttendView.h"
#import "AttendTableViewCell.h"

@interface AttendViewController ()

@end

@implementation AttendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _attendView = [[AttendView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [_attendView viewInit];
    [self.view addSubview:_attendView];
    _attendView.tableView.delegate = self;
    _attendView.tableView.dataSource = self;
    
    
    
    _subjectArr = [[NSMutableArray alloc] init];
    [_subjectArr addObject:@"数学"];
    [_subjectArr addObject:@"语文"];
    
    _nameArr = [[NSMutableArray alloc] init];
    [_nameArr addObject:@"李明"];
    [_nameArr addObject:@"张三"];
    
    _timeArr = [[NSMutableArray alloc] init];
    [_timeArr addObject:@"2020-12-10 10:00"];
    [_timeArr addObject:@"2020-12-10 12:00"];
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.nameArr count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AttendTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.subjectLabel.text = self.subjectArr[indexPath.row];
    cell.nameLabel.text = self.nameArr[indexPath.row];
    cell.timeLabel.text = self.timeArr[indexPath.row];
    cell.signLabel.text = @"到课";
    cell.classImage.image = [UIImage imageNamed:@"上课"];
    cell.timeImage.image = [UIImage imageNamed:@"时钟"];
    
    cell.backgroundColor = [UIColor clearColor];
    return cell;
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
