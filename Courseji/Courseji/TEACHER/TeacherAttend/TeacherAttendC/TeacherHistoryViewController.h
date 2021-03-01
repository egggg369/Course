//
//  TeacherHistoryViewController.h
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/24.
//  Copyright © 2021 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TeacherHistoryView.h"

NS_ASSUME_NONNULL_BEGIN

@interface TeacherHistoryViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) TeacherHistoryView *teacherHistoryView;

@property (nonatomic, strong) NSMutableArray *titleArr;
@property (nonatomic, strong) NSMutableArray *nameArr;
@property (nonatomic, strong) NSMutableArray *timeArr;
@property (nonatomic, strong) NSMutableArray *reasonArr;
@end

NS_ASSUME_NONNULL_END
