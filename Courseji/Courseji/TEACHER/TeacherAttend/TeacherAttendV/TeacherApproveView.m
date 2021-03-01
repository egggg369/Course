//
//  TeacherApproveView.m
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/25.
//  Copyright © 2021 无. All rights reserved.
//

#import "TeacherApproveView.h"

@implementation TeacherApproveView

- (void)viewInit {
    
    _beginLabel = [[UILabel alloc] init];
    _beginLabel.frame = CGRectMake(35, 120, 150, 40);
    _beginLabel.text =@"开始时间:";
    _beginLabel.font = [UIFont systemFontOfSize:25];
    _beginLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:25];
    [self addSubview:_beginLabel];
    
    _endLabel = [[UILabel alloc] init];
    _endLabel.frame = CGRectMake(35, 160, 150, 40);
    _endLabel.text = @"结束时间:";
    _endLabel.font =[UIFont fontWithName:@"Helvetica-Bold" size:25];
    [self addSubview:_endLabel];
    
    _typeLabel = [[UILabel alloc] init];
    _typeLabel.frame = CGRectMake(35, 205, 110, 30);
    _typeLabel.text = @"请假类型:";
    _typeLabel.font = [UIFont systemFontOfSize:18];
    _typeLabel.textColor = [UIColor grayColor];
    [self addSubview:_typeLabel];
    
    _leaveLabel = [[UILabel alloc] init];
    _leaveLabel.frame = CGRectMake(35, 240, 100, 30);
    _leaveLabel.text = @"是否离校：";
    _leaveLabel.font = [UIFont systemFontOfSize:18];
    _leaveLabel.textColor = [UIColor grayColor];
    [self addSubview:_leaveLabel];
    
    _spaceLabel = [[UILabel alloc] init];
    _spaceLabel.frame = CGRectMake(35, 275, 100, 30);
    _spaceLabel.text = @"销假地点:";
    _spaceLabel.font = [UIFont systemFontOfSize:18];
    _spaceLabel.textColor = [UIColor grayColor];
    [self addSubview:_spaceLabel];
    
    _phoneLabel = [[UILabel alloc] init];
    _phoneLabel.frame = CGRectMake(35, 310, 100, 30);
    _phoneLabel.text = @"联系电话:";
    _phoneLabel.font = [UIFont systemFontOfSize:18];
    _phoneLabel.textColor = [UIColor grayColor];
    [self addSubview:_phoneLabel];
    
    _peopleLabel  = [[UILabel alloc] init];
    _peopleLabel.frame = CGRectMake(35, 345, 100, 30);
    _peopleLabel.text = @"紧急联系人:";
    _peopleLabel.font = [UIFont systemFontOfSize:18];
    _peopleLabel.textColor = [UIColor grayColor];
    [self addSubview:_peopleLabel];

    _reasonLabel  = [[UILabel alloc] init];
    _reasonLabel.frame = CGRectMake(35, 380, 100, 30);
    _reasonLabel.text = @"请假事由:";
    _reasonLabel.font = [UIFont systemFontOfSize:18];
    _reasonLabel.textColor = [UIColor grayColor];
    [self addSubview:_reasonLabel];
    
    _begin2Label = [[UILabel alloc] init];
    _begin2Label.frame = CGRectMake(150, 120, 150, 40);
    //_begin2Label.text =@"开始时间:";
    _begin2Label.font = [UIFont systemFontOfSize:25];
    _begin2Label.font = [UIFont fontWithName:@"Helvetica-Bold" size:25];
    [self addSubview:_begin2Label];
    
    _end2Label = [[UILabel alloc] init];
    _end2Label.frame = CGRectMake(150, 160, 150, 40);
    //_end2Label.text = @"结束时间:";
    _end2Label.font =[UIFont fontWithName:@"Helvetica-Bold" size:25];
    [self addSubview:_end2Label];

    _type2Label = [[UILabel alloc] init];
    _type2Label.frame = CGRectMake(120, 205, 110, 30);
    //_type2Label.text = @"请假类型:";
    _type2Label.font = [UIFont systemFontOfSize:18];
    _type2Label.textColor = [UIColor grayColor];
    [self addSubview:_type2Label];

    _leave2Label = [[UILabel alloc] init];
    _leave2Label.frame = CGRectMake(120, 240, 100, 30);
    //_leave2Label.text = @"是否离校：";
    _leave2Label.font = [UIFont systemFontOfSize:18];
    _leave2Label.textColor = [UIColor grayColor];
    [self addSubview:_leave2Label];

    _space2Label = [[UILabel alloc] init];
    _space2Label.frame = CGRectMake(120, 275, 100, 30);
    //_space2Label.text = @"销假地点:";
    _space2Label.font = [UIFont systemFontOfSize:18];
    _space2Label.textColor = [UIColor grayColor];
    [self addSubview:_space2Label];

    _phone2Label = [[UILabel alloc] init];
    _phone2Label.frame = CGRectMake(120, 310, 100, 30);
    //_phone2Label.text = @"联系电话:";
    _phone2Label.font = [UIFont systemFontOfSize:18];
    _phone2Label.textColor = [UIColor grayColor];
    [self addSubview:_phone2Label];

    _people2Label  = [[UILabel alloc] init];
    _people2Label.frame = CGRectMake(135, 345, 100, 30);
    //_people2Label.text = @"紧急联系人:";
    _people2Label.font = [UIFont systemFontOfSize:18];
    _people2Label.textColor = [UIColor grayColor];
    [self addSubview:_people2Label];

    _reason2Label  = [[UILabel alloc] init];
    _reason2Label.frame = CGRectMake(120, 380, 100, 30);
    //_reason2Label.text = @"请假事由:";
    _reason2Label.font = [UIFont systemFontOfSize:18];
    _reason2Label.textColor = [UIColor grayColor];
    [self addSubview:_reason2Label];
    
    _titleImage = [[UIImageView alloc] init];
    _titleImage.frame = CGRectMake(35, 35, 70, 70);
    _titleImage.layer.masksToBounds = YES;
    _titleImage.layer.cornerRadius = 35;
    [self addSubview:_titleImage];
    
    _nameLabel = [[UILabel alloc] init];
    _nameLabel.frame = CGRectMake(120, 35, 80, 30);
    [self addSubview:_nameLabel];
    
    _strLabel = [[UILabel alloc] init];
    _strLabel.frame = CGRectMake(120, 70, 100, 30);
    [self  addSubview:_strLabel];
    
    _approveBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _approveBtn.frame = CGRectMake(35, 450, 355, 60);
    _approveBtn.backgroundColor = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
    [_approveBtn setTitle:@"批准" forState:UIControlStateNormal];
    [_approveBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _approveBtn.titleLabel.font = [UIFont systemFontOfSize:25];
    _approveBtn.layer.masksToBounds = YES;
    _approveBtn.layer.cornerRadius = 20;
    [self addSubview:_approveBtn];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
