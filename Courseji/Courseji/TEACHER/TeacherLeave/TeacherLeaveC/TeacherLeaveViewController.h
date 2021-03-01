//
//  TeacherLeaveViewController.h
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/21.
//  Copyright © 2021 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TeacherLeaveView.h"

NS_ASSUME_NONNULL_BEGIN

@interface TeacherLeaveViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) TeacherLeaveView *teacherLeaveView;

@end

NS_ASSUME_NONNULL_END
