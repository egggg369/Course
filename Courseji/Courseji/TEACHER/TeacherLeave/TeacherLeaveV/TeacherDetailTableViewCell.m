//
//  TeacherDetailTableViewCell.m
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/24.
//  Copyright © 2021 无. All rights reserved.
//

#import "TeacherDetailTableViewCell.h"
#import <Masonry.h>

@implementation TeacherDetailTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if([self.reuseIdentifier isEqualToString:@"cell"]) {
        _imageview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"临时图"]];
        [self.contentView addSubview:self.imageview];
        _imageview.layer.masksToBounds = YES;
        _imageview.layer.cornerRadius = 24.0;
        
        [_imageview mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(self.contentView.mas_width).multipliedBy(60.0/534.0);
            make.height.mas_equalTo(@50);
            make.top.mas_equalTo(self.contentView.mas_top).offset(6);
            make.left.mas_equalTo(self.contentView.mas_left).offset(20);
        }];
        
        _nameLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_nameLabel];
        [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(@70);
            make.height.equalTo(@40);
            make.left.mas_equalTo(self.imageview.mas_right).offset(10);
            make.top.mas_equalTo(self.contentView.mas_top).offset(11);
        }];
    }
    return self;
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
