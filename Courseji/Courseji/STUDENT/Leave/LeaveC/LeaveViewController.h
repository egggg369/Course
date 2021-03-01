//
//  LeaveViewController.h
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/15.
//  Copyright © 2021 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeaveView.h"
NS_ASSUME_NONNULL_BEGIN

@interface LeaveViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) LeaveView *leaveView;
@property (nonatomic, strong) UILabel *label;

@property (nonatomic, strong) NSMutableArray *subjectArr;
@property (nonatomic, strong) NSMutableArray *nameArr;
@property (nonatomic, strong) NSMutableArray *timeArr;
@end

NS_ASSUME_NONNULL_END
