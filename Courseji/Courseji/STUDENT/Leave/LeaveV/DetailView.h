//
//  DetailView.h
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/9.
//  Copyright © 2021 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailView : UIView <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;

-(void) viewInit;
@end

NS_ASSUME_NONNULL_END
