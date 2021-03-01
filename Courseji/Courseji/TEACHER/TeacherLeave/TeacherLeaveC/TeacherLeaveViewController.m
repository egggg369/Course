//
//  TeacherLeaveViewController.m
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/21.
//  Copyright © 2021 无. All rights reserved.
//

#import "TeacherLeaveViewController.h"
#import "TeacherLeaveView.h"
#import "TeacherLeaveTableViewCell.h"
#import "TeacherDetailViewController.h"
#import "TeacherApplyPageController.h"
#define graycolor [UIColor colorWithRed:243/255.0 green:249/255.0 blue:249/255.0 alpha:1];
#define bluecolor [UIColor colorWithRed:0 green:180/255.0 blue:255/255.0 alpha:1];

@interface TeacherLeaveViewController ()

@end

@implementation TeacherLeaveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0 green:183/255.0 blue:255/255.0 alpha:1];
    self.navigationController.navigationBar.translucent = NO;
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize: 20], NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    _teacherLeaveView = [[TeacherLeaveView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [_teacherLeaveView viewInit];
    [self.view addSubview:_teacherLeaveView];
    [_teacherLeaveView.tableView registerClass:[TeacherLeaveTableViewCell class] forCellReuseIdentifier:@"cell01"];
    [_teacherLeaveView.tableView registerClass:[TeacherLeaveTableViewCell class] forCellReuseIdentifier:@"cell02"];
    [_teacherLeaveView.tableView registerClass:[TeacherLeaveTableViewCell class] forCellReuseIdentifier:@"cell03"];
    [_teacherLeaveView.tableView registerClass:[TeacherLeaveTableViewCell class] forCellReuseIdentifier:@"cell04"];
    _teacherLeaveView.tableView.delegate = self;
    _teacherLeaveView.tableView.dataSource = self;
    [_teacherLeaveView.tableView setSeparatorColor:[UIColor whiteColor]];
    
    // Do any additional setup after loading the view.
    [self creatUI];
}

- (void) creatUI {
    UIBarButtonItem *word = [[UIBarButtonItem alloc]initWithTitle:@"请假页面" style:UIBarButtonItemStyleDone target:self action:@selector(click)];
    self.navigationItem.rightBarButtonItems = @[word];
//    UIImage *ima = [[UIImage imageNamed:@"扫一扫"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    UIBarButtonItem *image = [[UIBarButtonItem alloc]initWithImage:ima style:UIBarButtonItemStyleDone target:self action:@selector(next)];
//    self.navigationItem.leftBarButtonItems = @[image];
    
}

- (void) click {
    TeacherApplyPageController *page = [[TeacherApplyPageController alloc] init];
    [self.navigationController pushViewController:page animated:YES];
}

//组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 4;
}

//组内行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section == 3) {
        return 4;
    }
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0) {
        return 150;
    }else if (indexPath.section == 1) {
        return 50;
    }else if (indexPath.section == 2) {
        return 60;
    }else {
        return 50;
    }
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0) {
        TeacherLeaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell01" forIndexPath:indexPath];
        cell.contentView.backgroundColor = bluecolor;
        cell.selectionStyle = 0;
        return cell;
    }else if (indexPath.section == 1) {
        TeacherLeaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell02" forIndexPath:indexPath];
        cell.contentView.backgroundColor = graycolor;
        cell.selectionStyle = 0;
        return cell;
    }else if (indexPath.section == 2) {
        TeacherLeaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell03" forIndexPath:indexPath];
        //点击时没有灰色
        cell.selectionStyle = 0;
        return cell;
    }else {
        TeacherLeaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell04" forIndexPath:indexPath];
        NSArray *classlabelArr1 = @[@"软件1901", @"软件1902", @"软件1903", @"软件1904"];
        NSArray *timeArr1 = @[@"12.25", @"12.24", @"12.23", @"12.26"];
        NSArray *peopleArr = @[@"29/30", @"30/30", @"28/32", @"30/34"];

        cell.timeLabel.text = timeArr1[indexPath.row];
        cell.classLabel.text = classlabelArr1[indexPath.row];
        cell.peopleLabel.text = peopleArr[indexPath.row];
        //右箭头
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = 0;
        return cell;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 3) {
        TeacherDetailViewController *detail = [[TeacherDetailViewController alloc] init];
        [self.navigationController pushViewController:detail animated:YES];
    }
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
