//
//  AttendViewController.h
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/16.
//  Copyright © 2021 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AttendView.h"

NS_ASSUME_NONNULL_BEGIN

@interface AttendViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) AttendView *attendView;
@property (nonatomic, strong) UILabel *label;

@property (nonatomic, strong) NSMutableArray *subjectArr;
@property (nonatomic, strong) NSMutableArray *nameArr;
@property (nonatomic, strong) NSMutableArray *timeArr;

@end

NS_ASSUME_NONNULL_END
