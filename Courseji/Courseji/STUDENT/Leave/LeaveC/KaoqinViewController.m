//
//  ViewController.m
//  xiangmu1
//
//  Created by 郭红乐 on 2020/12/14.
//  Copyright © 2020 无. All rights reserved.
//

#import "KaoqinViewController.h"
#import "KaoheTableViewCell.h"
#import "QingjiaViewController.h"
#import "DetailViewController.h"
#import "LeaveViewController.h"
#import "AttendViewController.h"

@interface KaoqinViewController ()

@end

@implementation KaoqinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.view.backgroundColor = [UIColor grayColor];
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0 green:183/255.0 blue:255/255.0 alpha:1];
    self.navigationController.navigationBar.translucent = NO;
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize: 20], NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-170)];
    
    //self.tableView.backgroundView = [UIColor grayColor];
    
    [self.tableView registerClass:[KaoheTableViewCell class] forCellReuseIdentifier:@"grade"];
    [self.tableView registerClass:[KaoheTableViewCell class] forCellReuseIdentifier:@"grade1"];
    [self.tableView registerClass:[KaoheTableViewCell class] forCellReuseIdentifier:@"grade2"];
    [self.tableView registerClass:[KaoheTableViewCell class] forCellReuseIdentifier:@"grade3"];
    [self.tableView registerClass:[KaoheTableViewCell class] forCellReuseIdentifier:@"kaoqin"];
    [self.tableView registerClass:[KaoheTableViewCell class] forCellReuseIdentifier:@"kaoqin1"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    UIImage *ima = [[UIImage imageNamed:@"头像"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *image = [[UIBarButtonItem alloc]initWithImage:ima style:UIBarButtonItemStyleDone target:self action:@selector(next)];
    self.navigationItem.rightBarButtonItems = @[image];
    
    
    _i = 0;
    [self setupRefresh];
    //[self shownewStatus:0]
    
    
}

//添加下拉刷新控件
-(void)setupRefresh{
    UIRefreshControl *refControl=[[UIRefreshControl alloc]init];
    [refControl addTarget:self action:@selector(RefreshData:) forControlEvents:UIControlEventValueChanged];
    [self.tableView addSubview:refControl];
    [refControl beginRefreshing];
    [self RefreshData:refControl];
    //[self showNavigationAlert:@"数据已刷新"];
    
}

-(void)RefreshData:(UIRefreshControl*)control{
    NSLog(@"刷新数据");
    //[control beginRefreshing];
    [self.tableView reloadData];
    [control endRefreshing];
    //int count = 0;
    if(_i > 0) {
        [self shownewStatus:0];
    }
    _i++;
    //NSLog(@"%d",_i);
}

-(void)shownewStatus:(int)count
{
    //首先将label控件隐藏在导航栏的后面
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, [UIApplication sharedApplication].statusBarFrame.size.height+self.navigationController.navigationBar.frame.size.height-35, [UIScreen mainScreen].bounds.size.width, 35);
    label.backgroundColor = [UIColor colorWithRed:73/255.0 green:159/255.0 blue:235/255.0 alpha:1];
    if(count == 0){
        label.text = @"已更新数据";
    }else{
        //count是传进来的数量
        label.text = [NSString stringWithFormat:@"已加载%d条最新数据",count];
    }
    label.textColor = [UIColor whiteColor];
    //设置文字居中
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:16.0];
    [self.navigationController.view insertSubview:label belowSubview:self.navigationController.navigationBar];
    //动画显示
    [UIView animateWithDuration:1.0 animations:^{
        label.transform = CGAffineTransformMakeTranslation(0, 35);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.0 delay:1.0 options:UIViewAnimationOptionCurveLinear animations:^{
            //一键回到最初的状态
            label.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            //不用的时候把label移除掉
            [label removeFromSuperview];
        }];
    }];
}

//显示刷新提示标签
//-(void)showNavigationAlert:(NSString*)alertTitle{
//    UILabel *refreshIndicatorLab = [UILabel new];
//    refreshIndicatorLab.textAlignment = NSTextAlignmentCenter;
//   // refreshIndicatorLab.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@""]];
//    refreshIndicatorLab.backgroundColor = [UIColor lightGrayColor];
//    refreshIndicatorLab.font = [UIFont systemFontOfSize:10];
//    refreshIndicatorLab.text = alertTitle;
////    refreshIndicatorLab.width = self.navigationController.view.width;
////    refreshIndicatorLab.height = LWLWindowsW/20;
////    refreshIndicatorLab.x = 0;
////    refreshIndicatorLab.y = [UIApplication sharedApplication].statusBarFrame.size.height + self.navigationController.navigationBar.height - refreshIndicatorLab.height;
//    refreshIndicatorLab.frame = CGRectMake(0, /*[UIApplication sharedApplication].statusBarFrame.size.height+self.navigationController.navigationBar.frame.size.height-35*/55, [UIScreen mainScreen].bounds.size.width, 35);
//
//    [self.navigationController.view insertSubview:refreshIndicatorLab belowSubview:self.navigationController.navigationBar];
//    [UIView animateWithDuration:1.0f animations:^{
//        // 使用更改transform来实现
//refreshIndicatorLab.transform = CGAffineTransformIdentity;
//    } completion:^(BOOL finished) {
//    [UIView animateWithDuration:0.5 delay:0.5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
//        // 恢复位置
//    refreshIndicatorLab.transform = CGAffineTransformIdentity;
//    } completion:^(BOOL finished) {
//         [refreshIndicatorLab removeFromSuperview];
//    }];
//    }];
//}


//高度
- (CGFloat)tableView: (UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    if (indexPath.section == 0 && indexPath.row == 0) {
        return 150;
    }else if (indexPath.section == 0 && indexPath.row == 1){
        return 50;
    }else if (indexPath.section == 0 && indexPath.row == 2) {
        return  65;
    }else if (indexPath.section == 0 && indexPath.row == 3) {
        return  300;
    }else if (indexPath.section == 1 && indexPath.row == 0) {
        return 60;
    }else {
        return 50;
    }
    
}

//几个cell，组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

//几列有几行，组内行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section == 0) {
        return 4;
    }else {
        return 4;
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


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0 && indexPath.row ==0) {
        KaoheTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"grade" forIndexPath:indexPath];
        cell.contentView.backgroundColor = [UIColor colorWithRed:0 green:180/255.0 blue:255/255.0 alpha:1];
        cell.selectionStyle = 0;
        return cell;
    }else if(indexPath.section == 0 && indexPath.row == 1) {
        KaoheTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"grade1" forIndexPath:indexPath];
        cell.contentView.backgroundColor = [UIColor colorWithRed:243/255.0 green:249/255.0 blue:249/255.0 alpha:1];
        cell.selectionStyle = 0;
        return cell;
    }else if(indexPath.section == 0 && indexPath.row == 2) {
        KaoheTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"grade2" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }else if(indexPath.section == 0 && indexPath.row == 3) {
        KaoheTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"grade3" forIndexPath:indexPath];
        
       
        
        cell.selectionStyle = 0;
        return cell;
    }else if(indexPath.section == 1 && indexPath.row ==0) {
        KaoheTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"kaoqin1" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }else {
        KaoheTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"kaoqin" forIndexPath:indexPath];
        NSArray *labelArr1 = @[@"缺勤", @"请假", @"到课"];
        NSArray *timeArr1 = @[@"10次", @"10次", @"10次"];

        cell.timelabel.text = timeArr1[indexPath.row  - 1];
        cell.label.text = labelArr1[indexPath.row - 1];
        //右箭头
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = 0;
        return cell;
        
        
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.section == 1 && indexPath.row ==1) {
        DetailViewController *detail = [[DetailViewController alloc] init];
        //detail.modalPresentationStyle = UIModalPresentationFullScreen;
        //[self presentViewController:detail animated:YES completion:nil];
        [self.navigationController pushViewController:detail animated:YES];
    }else if(indexPath.section == 1 && indexPath.row == 2) {
        LeaveViewController *leave = [[LeaveViewController alloc] init];
        [self.navigationController pushViewController:leave animated:YES];
    }else if(indexPath.section == 1 && indexPath.row == 3) {
        AttendViewController *attend = [[AttendViewController alloc] init];
        [self.navigationController pushViewController:attend animated:YES];
    }
}

- (void) next {
    QingjiaViewController *qingjia = [[QingjiaViewController alloc] init];
    
    [self.navigationController pushViewController:qingjia animated:YES];
}
        


@end
