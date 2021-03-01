//
//  DetailTableViewCell.m
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/16.
//  Copyright © 2021 无. All rights reserved.
//

#import "DetailTableViewCell.h"

@implementation DetailTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    self.subjectLabel = [[UILabel alloc] init];
    [self.contentView addSubview:self.subjectLabel];
    
    self.signLabel = [[UILabel alloc] init];
    [self.contentView addSubview:self.signLabel];

    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:self.nameLabel];
    
    self.timeLabel = [[UILabel alloc] init];
    [self.contentView addSubview:self.timeLabel];
    
    _timeImage = [[UIImageView alloc] init];
    [self.contentView addSubview:_timeImage];
    
    _classImage = [[UIImageView alloc] init];
    [self.contentView addSubview:_classImage];
    
    return self;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    self.subjectLabel.frame = CGRectMake(20, 10, 60, 30);
    self.signLabel.frame = CGRectMake(80, 10, 50, 30);
    self.nameLabel.frame = CGRectMake(52, 55, 50, 30);
    self.timeLabel.frame = CGRectMake(52, 90, 120, 30);
    
    self.classImage.frame = CGRectMake(20, 60, 20, 20);
    self.timeImage.frame = CGRectMake(20, 95, 20, 20);
    
    self.subjectLabel.font = [UIFont systemFontOfSize:18];
    self.signLabel.font = [UIFont systemFontOfSize:17];
    self.nameLabel.font = [UIFont systemFontOfSize:15];
    self.timeLabel.font = [UIFont systemFontOfSize:14];
    
    self.signLabel.backgroundColor = [UIColor redColor];
    self.signLabel.textColor = [UIColor whiteColor];
    self.nameLabel.textColor = [UIColor grayColor];
    self.timeLabel.textColor = [UIColor grayColor];
    
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
