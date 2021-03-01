//
//  TeacherLeaveView.h
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/21.
//  Copyright © 2021 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TeacherLeaveView : UIView <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;

-(void)viewInit;
@end

NS_ASSUME_NONNULL_END
