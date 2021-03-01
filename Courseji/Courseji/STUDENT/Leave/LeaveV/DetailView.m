//
//  DetailView.m
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/9.
//  Copyright © 2021 无. All rights reserved.
//

#import "DetailView.h"
#import "DetailViewController.h"
#import "DetailTableViewCell.h"

@implementation DetailView

-(void) viewInit {
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0,self.frame.size.width, 350) style:UITableViewStylePlain];
    [self.tableView registerClass:[DetailTableViewCell class] forCellReuseIdentifier:@"cell"];
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
