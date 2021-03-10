//
//  KaoheTableViewCell.m
//  xiangmu1
//
//  Created by 郭红乐 on 2020/12/15.
//  Copyright © 2020 无. All rights reserved.
//

#import "KaoheTableViewCell.h"
#import "PieChartView.h"
#import <Masonry.h>

//@interface KaoheTableViewCell ()
//
//
//@property (nonatomic,strong) PieChartView *pieChartView2;
//@property (nonatomic,assign) BOOL isBtnClicked;
//
//@end


@implementation KaoheTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if([self.reuseIdentifier isEqualToString:@"grade"]) {
        UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图像3.jpeg"]];
        image.frame = CGRectMake(20, 20, 90, 90);
        image.layer.masksToBounds = YES;
        image.layer.cornerRadius = 41.0;
        [self.contentView addSubview:image];
        
        
        UILabel *label = [[UILabel alloc] init];
        label.text = @"郭敏慧";
        label.textColor = [UIColor whiteColor];
        label.frame = CGRectMake(120, 50, 200, 40);
        label.font = [UIFont systemFontOfSize:18];
        [self.contentView addSubview:label];
        
        UILabel *label1 = [[UILabel alloc] init];
        label1.text = @"个人资料 >";
        label1.textColor = [UIColor whiteColor];
        label1.frame = CGRectMake(120, 90, 200, 20);
        [self.contentView addSubview:label1];
        
//        UILabel *percent = [[UILabel alloc] init];
//        percent.frame = CGRectMake(370, 90, 140, 20);
//        percent.text = @"45/100";
//        percent.textColor = [UIColor whiteColor];
//        [self.contentView addSubview:percent];
//
//        UILabel *qiandao = [[UILabel alloc] init];
//        qiandao.frame = CGRectMake(300, 50, 150, 40);
//        qiandao.text = @"已签到/应签到";
//        qiandao.textColor = [UIColor whiteColor];
//        [self.contentView addSubview:qiandao];
        
    }else if([self.reuseIdentifier isEqualToString:@"grade1"]) {
        UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"日历"]];
        image.frame = CGRectMake(20, 10, 30, 30);
        [self.contentView addSubview:image];
        
        UILabel *yearlabel = [[UILabel alloc] init];
        yearlabel.text = @"2020年";
        yearlabel.frame = CGRectMake(55, 10, 80, 30);
        [self.contentView addSubview:yearlabel];
        
    }else if([self.reuseIdentifier isEqualToString:@"grade2"]) {
        UILabel *chuqinlabel = [[UILabel alloc] init];
        chuqinlabel.text = @"出勤占比图";
        //chuqinlabel.frame = CGRectMake(20, 10, 240, 30);
        //chuqinlabel.font = [UIFont systemFontOfSize:28];
        [chuqinlabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:25]];
        [self.contentView addSubview:chuqinlabel];
        [chuqinlabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(10);
            make.width.mas_equalTo(200);
            make.left.mas_equalTo(self.contentView.mas_left).mas_offset(20);
            make.height.mas_equalTo(30);
        }];
        
        UILabel *yearlabel = [[UILabel alloc] init];
        yearlabel.text = @"切换考勤课程占比图";
        yearlabel.textColor = [UIColor grayColor];
        //yearlabel.frame = CGRectMake(250, 10, 180, 30);
        [self.contentView addSubview:yearlabel];
        [yearlabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(10);
            make.width.mas_equalTo(160);
            make.right.mas_equalTo(self.contentView.mas_right).mas_offset(-5);
            make.height.mas_equalTo(30);
        }];
        
        UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"切换"]];
        //image.frame = CGRectMake(215, 10, 30, 30);
        [self.contentView addSubview:image];
        [image mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(15);
            make.width.mas_equalTo(20);
            make.right.mas_equalTo(yearlabel.mas_left).mas_offset(-5);
            make.height.mas_equalTo(20);
        }];
          
    }else if([self.reuseIdentifier isEqualToString:@"grade3"]) {
        //PieChartView *charView  = [[PieChartView alloc] init];
        self.pieChartView2 = [[PieChartView alloc] initWithFrame:CGRectMake(0, 0, self.contentView.frame.size.width + 70, 300)];
        self.pieChartView2.backgroundColor = [UIColor whiteColor];
        self.pieChartView2.isDoubleCircle = NO;
        self.pieChartView2.legendPostion = LegendPositionTop;
        self.pieChartView2.legendNameArray = @[@"到课",@"请假",@"缺勤"];
        self.pieChartView2.pieDataArray = @[@"26",@"1",@"2"];
        self.pieChartView2.radius = 70;
        self.pieChartView2.pieDataUnit = @"人";
        [self.contentView addSubview:self.pieChartView2];
        [self.pieChartView2 resetData];
        
    }else if([self.reuseIdentifier isEqualToString:@"kaoqin1"]) {
        UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"星星"]];
        image.frame = CGRectMake(20, 10, 30, 30);
        [self.contentView addSubview:image];
        
        UILabel *label = [[UILabel alloc] init];
        label.text = @"考勤明细";
        label.frame = CGRectMake(55, 10, 150, 30);
        label.font = [UIFont systemFontOfSize:20];
        [label setFont:[UIFont fontWithName:@"Helvetica-Bold" size:20]];
        [self.contentView addSubview:label];
    }else if([self.reuseIdentifier isEqualToString:@"kaoqin"]) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(20, 5, 120, 30)];
        [self.contentView addSubview:_label];
        
        _timelabel = [[UILabel alloc] init];
        //WithFrame:CGRectMake(340, 10, 40, 30)
        _timelabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:_timelabel];
        [_timelabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(10);
            make.width.mas_equalTo(40);
            make.right.mas_equalTo(self.contentView.mas_right).mas_offset(-10);
            make.height.mas_equalTo(30);
        }];
    }
    return self;
}

- (void) layoutSubviews {
    _label.font = [UIFont systemFontOfSize:20];
    _timelabel.font = [UIFont systemFontOfSize:16];
    
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
