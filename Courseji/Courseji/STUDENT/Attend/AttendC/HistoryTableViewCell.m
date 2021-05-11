//
//  HistoryTableViewCell.m
//  xiangmu1
//
//  Created by 郭红乐 on 2020/12/21.
//  Copyright © 2020 无. All rights reserved.
//

#import "HistoryTableViewCell.h"
#import "QingjiaViewController.h"
@implementation HistoryTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if([self.reuseIdentifier isEqualToString:@"article2"]) {
        
        _illlabel = [[UILabel alloc] init];
        _illlabel.frame = CGRectMake(20, 0, 90, 60);
        //_illlebel.text = qingjia.namestr;
        _illlabel.font = [UIFont systemFontOfSize:20];
        [self.contentView addSubview:_illlabel];
        
        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.frame = CGRectMake(35, 35, 100, 50);
        nameLabel.text = @"xwl";
        nameLabel.textColor = [UIColor grayColor];
        nameLabel.font = [UIFont systemFontOfSize:17];
        [self.contentView addSubview:nameLabel];
        
        UILabel *beginLabel = [[UILabel alloc] init];
        beginLabel.frame = CGRectMake(35, 60, 100, 50);
        beginLabel.text = @"2020-12-5";
        beginLabel.font = [UIFont systemFontOfSize:17];
        beginLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:beginLabel];
        
        UILabel *endLabel = [[UILabel alloc] init];
        endLabel.frame = CGRectMake(130, 60, 100, 50);
        endLabel.text = @"2020-12-6";
        endLabel.font = [UIFont systemFontOfSize:17];
        endLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:endLabel];
        
        UILabel *leavelabel = [[UILabel alloc] init];
        leavelabel.frame = CGRectMake(35, 85, 160, 50);
        leavelabel.text = @"发烧请假";
        leavelabel.font = [UIFont systemFontOfSize:17];
        leavelabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:leavelabel];
        
        UIButton *containbtn = [UIButton buttonWithType:UIButtonTypeSystem];
        containbtn.frame = CGRectMake(70, 19, 50, 20);
        containbtn.backgroundColor = [UIColor colorWithRed:49/255.0 green:182/255.0 blue:105/255.0 alpha:1];
        [containbtn setTitle:@"已销假" forState:UIControlStateNormal];
        containbtn.tintColor = [UIColor whiteColor];
        [self.contentView addSubview:containbtn];
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
