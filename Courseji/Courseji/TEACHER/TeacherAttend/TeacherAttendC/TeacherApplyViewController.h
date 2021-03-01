//
//  TeacherApplyViewController.h
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/24.
//  Copyright © 2021 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TeacherApplyView.h"

NS_ASSUME_NONNULL_BEGIN

@interface TeacherApplyViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) TeacherApplyView *teacherApplyView;

@property (nonatomic, strong) NSMutableArray *titleArr;
@property (nonatomic, strong) NSMutableArray *nameArr;
@property (nonatomic, strong) NSMutableArray *timeArr;
@property (nonatomic, strong) NSMutableArray *reasonArr;
@end

NS_ASSUME_NONNULL_END
