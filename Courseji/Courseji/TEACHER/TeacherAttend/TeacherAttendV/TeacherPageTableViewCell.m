//
//  TeacherPageTableViewCell.m
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/24.
//  Copyright © 2021 无. All rights reserved.
//

#import "TeacherPageTableViewCell.h"

@implementation TeacherPageTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _reasonLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_reasonLabel];
    
    _signLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_signLabel];
    _signLabel.layer.masksToBounds = YES;
    _signLabel.layer.cornerRadius = 10;
    
    _titleLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_titleLabel];
    
    _nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    _timeLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_timeLabel];
    
    _nameImage = [[UIImageView alloc] init];
    [self.contentView addSubview:_nameImage];
    
    _timeImage = [[UIImageView alloc] init];
    [self.contentView addSubview:_timeImage];
    
    _reasonImage = [[UIImageView alloc] init];
    [self.contentView addSubview:_reasonImage];
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _titleLabel.frame = CGRectMake(20, 10, 60, 30);
    _signLabel.frame = CGRectMake(80, 10, 70, 30);
    _nameLabel.frame = CGRectMake(52, 55, 50, 30);
    _timeLabel.frame = CGRectMake(52, 90, 200, 30);
    _reasonLabel.frame = CGRectMake(52, 125, 120, 30);
    
    _titleLabel.font = [UIFont systemFontOfSize:21];
    _signLabel.font = [UIFont systemFontOfSize:17];
    _nameLabel.font = [UIFont systemFontOfSize:15];
    _timeLabel.font = [UIFont systemFontOfSize:15];
    _reasonLabel.font = [UIFont systemFontOfSize:15];
    
    
    self.signLabel.textColor = [UIColor whiteColor];
    self.nameLabel.textColor = [UIColor grayColor];
    self.timeLabel.textColor = [UIColor grayColor];
    self.reasonLabel.textColor = [UIColor grayColor];
    
    _nameImage.frame = CGRectMake(20, 60, 20, 20);
    _timeImage.frame = CGRectMake(20, 95, 20, 20);
    _reasonImage.frame = CGRectMake(20, 130, 20, 20);
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
