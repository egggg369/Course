//
//  TeacherPageTableViewCell.h
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/24.
//  Copyright © 2021 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TeacherPageTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *signLabel;
@property (nonatomic, strong) UILabel *reasonLabel;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UIImageView *nameImage;
@property (nonatomic, strong) UIImageView *timeImage;
@property (nonatomic, strong) UIImageView *reasonImage;
@end

NS_ASSUME_NONNULL_END
