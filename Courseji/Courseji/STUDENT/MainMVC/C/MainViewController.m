//
//  MainViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/5.
//

#import "MainViewController.h"
#import "MoreViewController.h"
#import "WeekViewController.h"
<<<<<<< HEAD
//#import "EOCPerson.h"
=======
>>>>>>> main_wangxu
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setNav];
    self.mainView = [[MainView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.mainView];
    [self.mainView.leftMoreButton addTarget:self action:@selector(pressLeft) forControlEvents:UIControlEventTouchUpInside];
    [self.mainView.rightMoreButton addTarget:self action:@selector(pressRight) forControlEvents:UIControlEventTouchUpInside];
<<<<<<< HEAD
    //EOCPerson *person = [[EOCPerson alloc] initWithFirstName:@"Bob" lastName:@"Smith"];
    //NSLog(@"person = %@",person);
=======
>>>>>>> main_wangxu
}
- (void)setNav {
    UITabBarItem* tabBarItem = [UITabBarItem new];
    tabBarItem.image = [[UIImage imageNamed:@"线性春.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.selectedImage = [[UIImage imageNamed:@"线性春.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.title = @"主界面";
    self.tabBarItem = tabBarItem;
    
    self.navigationItem.title = @"主界面";
}
- (void)pressLeft {
    MoreViewController *moreViewController = [[MoreViewController alloc] init];
    moreViewController.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:moreViewController animated:YES completion:nil];
}
- (void)pressRight {
    WeekViewController *weekViewController = [[WeekViewController alloc] init];
    weekViewController.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:weekViewController animated:NO completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
