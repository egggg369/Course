//
//  DetailTableViewCell.h
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/16.
//  Copyright © 2021 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailTableViewCell : UITableViewCell
@property (nonatomic, strong) UIImageView *classImage;
@property (nonatomic, strong) UIImageView *timeImage;
@property (nonatomic, strong) UILabel *subjectLabel;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UILabel *signLabel;

@end

NS_ASSUME_NONNULL_END
