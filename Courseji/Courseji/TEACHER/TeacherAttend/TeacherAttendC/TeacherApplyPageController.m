//
//  TeacherApplyPageController.m
//  xiangmu1
//
//  Created by 郭红乐 on 2021/2/24.
//  Copyright © 2021 无. All rights reserved.
//

#import "TeacherApplyPageController.h"
#import "TeacherApplyViewController.h"
#import "TeacherHistoryViewController.h"

@interface TeacherApplyPageController ()
@property (nonatomic, strong) UIView *myview;
@end

@implementation TeacherApplyPageController

//- (UIView *)myview {
//    if(!_myview) {
//        _myview = [[UIView alloc] initWithFrame:CGRectZero];
//
//    }
//    return _myview;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (instancetype)init {
    if (self = [super init]) {
        self.titleSizeNormal = 15;
        self.titleSizeSelected = 15;
        self.menuViewStyle = WMMenuViewStyleFlood;
//        self.titleColorSelected = [UIColor blueColor];//设置选中文字颜色
//        self.progressColor = [UIColor whiteColor];
//        self.titleSizeSelected = 18;//设置选中文字大小
        self.titleSizeNormal = 19;
        self.titleColorSelected = [UIColor whiteColor];
        self.titleColorNormal = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
        self.progressColor = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
        //self.showOnNavigationBar = YES;
        self.menuViewLayoutMode = WMMenuViewLayoutModeCenter;
        self.titleSizeSelected = 19;
        
    }
    return self;
}

//- (void)viewDidLayoutSubviews {
//    [super viewDidLayoutSubviews];
//    self.myview.frame = CGRectMake(0, CGRectGetMaxY(self.menuView.frame), self.view.frame.size.width, 2.0);
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController {
    return 2;
}

-(NSString *)pageController:(WMPageController *)pageController titleAtIndex:(NSInteger)index {
    switch (index) {
        case 0:
            return @"请假申请";
        case 1:
            return @"历史记录";
        default:
            break;
    }
    return @"NONE";
}

- (UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index {
    switch (index) {
        case 0:
            return [[TeacherApplyViewController alloc] init];
        case 1:
            return [[TeacherHistoryViewController alloc] init];
        default:
            break;
    }
    return [[UIViewController alloc] init];
}

- (CGFloat)menuView:(WMMenuView *)menu widthForItemAtIndex:(NSInteger)index {
    CGFloat width = [super menuView:menu widthForItemAtIndex:index];
    return width + 50;
}

- (CGRect)pageController:(WMPageController *)pageController preferredFrameForMenuView:(WMMenuView *)menuView {
    CGFloat leftMargin = self.showOnNavigationBar ? 50 : 0;
    CGFloat originY = self.showOnNavigationBar ? CGRectGetMaxY(self.navigationController.navigationBar.frame) : 0;
    return CGRectMake(leftMargin, originY, self.view.frame.size.width - 2*leftMargin, 60);
    
    //return CGRectMake(self.view.frame.size.width/9, 0, 250, 60);
}

- (CGRect)pageController:(WMPageController *)pageController preferredFrameForContentView:(WMScrollView *)contentView {
    CGFloat originY = CGRectGetMaxY([self pageController:pageController preferredFrameForMenuView:self.menuView]);
    return CGRectMake(0, originY, self.view.frame.size.width, self.view.frame.size.height - originY);
}

@end
