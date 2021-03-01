//
//  TeacherDetailViewController.h
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/23.
//  Copyright © 2021 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TeacherDetailView.h"

NS_ASSUME_NONNULL_BEGIN

@interface TeacherDetailViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) TeacherDetailView *teacherDetailView;
@end

NS_ASSUME_NONNULL_END
