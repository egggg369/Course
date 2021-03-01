//
//  TeacherApproveViewController.h
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/25.
//  Copyright © 2021 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TeacherApproveViewController.h"
#import "TeacherApproveView.h"

NS_ASSUME_NONNULL_BEGIN

@interface TeacherApproveViewController : UIViewController
@property (nonatomic, strong) TeacherApproveView *teacherApproveView;


@property (nonatomic, strong) UIButton *approveBtn;
@end

NS_ASSUME_NONNULL_END
