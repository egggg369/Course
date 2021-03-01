//
//  TeacherApproveViewController.m
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/25.
//  Copyright © 2021 无. All rights reserved.
//

#import "TeacherApproveViewController.h"
#import "TeacherApproveView.h"

@interface TeacherApproveViewController ()

@end

@implementation TeacherApproveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _teacherApproveView = [[TeacherApproveView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    [_teacherApproveView.approveBtn addTarget:self action:@selector(down) forControlEvents:UIControlEventTouchUpInside];
    
    [_teacherApproveView viewInit];
    
    _teacherApproveView.titleImage.image = [UIImage imageNamed:@"图像2.jpg"];
    _teacherApproveView.nameLabel.text = @"李明";
    _teacherApproveView.strLabel.text = @"04193117";
    
    [self.view addSubview:_teacherApproveView];
    NSLog(@"%@",_teacherApproveView.nameLabel.text);
    // Do any additional setup after loading the view.
}
 
- (void)down {
   // _teacherApproveView.approveBtn.backgroundColor = [UIColor grayColor];
    
//    _approveBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    _approveBtn.frame = CGRectMake(35, 450, 370, 60);
//    _approveBtn.backgroundColor = [UIColor grayColor];
//    [_approveBtn setTitle:@"批准" forState:UIControlStateNormal];
//    [_approveBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    _approveBtn.titleLabel.font = [UIFont systemFontOfSize:25];
//    _approveBtn.layer.masksToBounds = YES;
//    _approveBtn.layer.cornerRadius = 20;
//    [self.teacherApproveView addSubview:_approveBtn];
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
