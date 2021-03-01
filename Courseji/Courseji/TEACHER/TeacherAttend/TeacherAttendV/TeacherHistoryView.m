//
//  TeacherHistoryView.m
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/25.
//  Copyright © 2021 无. All rights reserved.
//

#import "TeacherHistoryView.h"
#import "TeacherPageTableViewCell.h"
@implementation TeacherHistoryView
- (void) viewInit {
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) style:UITableViewStylePlain];
    [self.tableView registerClass:[TeacherPageTableViewCell class] forCellReuseIdentifier:@"cell"];
    [self addSubview:_tableView];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
