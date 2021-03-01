//
//  XinxiTableViewCell.h
//  xiangmu1
//
//  Created by 郭红乐 on 2020/12/21.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XinxiTableViewCell : UITableViewCell 
@property (nonatomic,strong) UITextField *nametextField;
@property (nonatomic,strong) UITextField *classtextField;
@property (nonatomic,strong) UITextField *begintextField;

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UITextField *palceTextField;

@end

NS_ASSUME_NONNULL_END
