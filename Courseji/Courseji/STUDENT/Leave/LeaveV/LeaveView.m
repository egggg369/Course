//
//  LeaveView.m
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/15.
//  Copyright © 2021 无. All rights reserved.
//

#import "LeaveView.h"
#import "LeaveTableViewCell.h"

@implementation LeaveView

-(void) viewInit {
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 350) style:UITableViewStylePlain];
    [self.tableView registerClass:[LeaveTableViewCell class] forCellReuseIdentifier:@"cell"];
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
