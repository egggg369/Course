//
//  TeacherApproveView.h
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/25.
//  Copyright © 2021 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TeacherApproveView : UIView
@property (nonatomic, strong) UILabel *beginLabel;
@property (nonatomic, strong) UILabel *endLabel;
@property (nonatomic, strong) UILabel *typeLabel;
@property (nonatomic, strong) UILabel *leaveLabel;
@property (nonatomic, strong) UILabel *spaceLabel;
@property (nonatomic, strong) UILabel *phoneLabel;
@property (nonatomic, strong) UILabel *peopleLabel;
@property (nonatomic, strong) UILabel *reasonLabel;
@property (nonatomic, strong) UIButton *approveBtn;

@property (nonatomic, strong) UILabel *begin2Label;
@property (nonatomic, strong) UILabel *end2Label;
@property (nonatomic, strong) UILabel *type2Label;
@property (nonatomic, strong) UILabel *leave2Label;
@property (nonatomic, strong) UILabel *space2Label;
@property (nonatomic, strong) UILabel *phone2Label;
@property (nonatomic, strong) UILabel *people2Label;
@property (nonatomic, strong) UILabel *reason2Label;

@property (nonatomic, strong) UIImageView *titleImage;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *strLabel;

- (void) viewInit;
@end

NS_ASSUME_NONNULL_END
