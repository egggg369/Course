//
//  TeacherLeaveTableViewCell.m
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/23.
//  Copyright © 2021 无. All rights reserved.
//

#import "TeacherLeaveTableViewCell.h"

@implementation TeacherLeaveTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if([self.reuseIdentifier isEqualToString:@"cell01"]) {
        _namelabel = [[UILabel alloc] init];
        _namelabel.text = @"数据结构老师";
        _namelabel.font = [UIFont systemFontOfSize:20];
        _namelabel.textColor = [UIColor whiteColor];
        [self.contentView addSubview:_namelabel];
        
        _inforlabel = [[UILabel alloc] init];
        _inforlabel.text = @"个人资料  >";
        _inforlabel.font = [UIFont systemFontOfSize:16];
        _inforlabel.textColor = [UIColor whiteColor];
        [self.contentView addSubview:_inforlabel];
        
        
        _imageview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图像1.jpg"]];
        _imageview.frame = CGRectMake(15, 20, 100, 100);
        // 必須加上這一行，這樣圓角才會加在圖片的「外側」
        _imageview.layer.masksToBounds=YES;
        _imageview.layer.cornerRadius=36.0;
        
        // 其實就是設定圓角，只是圓角的弧度剛好就是圖片尺寸的一半
        //_imageview.layer.cornerRadius = NSPageSize / 2.0;
        [self.contentView addSubview:_imageview];
        
    }else if ([self.reuseIdentifier isEqualToString:@"cell02"]) {
        UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"日历"]];
        image.frame = CGRectMake(20, 10, 30, 30);
        [self.contentView addSubview:image];
        
        UILabel *yearlabel = [[UILabel alloc] init];
        yearlabel.text = @"2020年";
        yearlabel.frame = CGRectMake(55, 10, 80, 30);
        [self.contentView addSubview:yearlabel];
    }else if ([self.reuseIdentifier isEqualToString:@"cell03"]) {
        UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"星星"]];
        image.frame = CGRectMake(20, 10, 30, 30);
        [self.contentView addSubview:image];
        
        UILabel *label = [[UILabel alloc] init];
        label.text = @"考勤明细";
        label.frame = CGRectMake(55, 10, 150, 30);
        label.font = [UIFont systemFontOfSize:20];
        [label setFont:[UIFont fontWithName:@"Helvetica-Bold" size:20]];
        [self.contentView addSubview:label];
    }else if ([self.reuseIdentifier isEqualToString:@"cell04"]) {
        _classLabel = [[UILabel alloc] initWithFrame:CGRectMake(130, 5, 120, 30)];
        [self.contentView addSubview:_classLabel];
        
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 5, 90, 30)];
        [self.contentView addSubview:_timeLabel];
        
        _peopleLabel = [[UILabel alloc] initWithFrame:CGRectMake(330, 10, 50, 30)];
        _peopleLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:_peopleLabel];
    }
    return self;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    _namelabel.frame = CGRectMake(130, 20, 160, 50);
    _inforlabel.frame = CGRectMake(130, 70, 100, 30);
    
    _classLabel.font = [UIFont systemFontOfSize:20];
    _peopleLabel.font = [UIFont systemFontOfSize:16];
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
