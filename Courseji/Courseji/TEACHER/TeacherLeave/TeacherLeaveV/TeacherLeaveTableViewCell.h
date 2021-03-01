//
//  TeacherLeaveTableViewCell.h
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/23.
//  Copyright © 2021 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TeacherLeaveTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *namelabel;
@property (nonatomic, strong) UILabel *inforlabel;
@property (nonatomic, strong) UIImageView *imageview;

@property (nonatomic, strong) UILabel *classLabel;
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UILabel *peopleLabel;
@end

NS_ASSUME_NONNULL_END
