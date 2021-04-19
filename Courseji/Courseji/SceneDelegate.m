//
//  SceneDelegate.m
//  Courseji
//
//  Created by 郭红乐 on 2021/3/1.
//  Copyright © 2021 无. All rights reserved.
//

#import "SceneDelegate.h"
#import "MainViewController.h"
#import "MidViewController.h"
#import "PersonalViewController.h"
#import "LaunchViewController.h"
#import "KaoqinViewController.h"
#import "TeacherLeaveViewController.h"
@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    self.window = [[UIWindow alloc] initWithWindowScene:scene];
//    MainViewController *mainViewController = [[MainViewController alloc] init];
    MainViewController *main = [MainViewController new];
    MidViewController *mid = [MidViewController new];
    PersonalViewController *personal = [PersonalViewController new];
    LaunchViewController *launch = [LaunchViewController new];
       
    //创建导航栏
    UINavigationController* nav1 = [[UINavigationController alloc] initWithRootViewController:main];
    UINavigationController* nav2 = [[UINavigationController alloc] initWithRootViewController:mid];
    UINavigationController* nav3 = [[UINavigationController alloc] initWithRootViewController:personal];
    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:launch];
    //调色
    nav1.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.7 alpha:1.0];
    [nav1.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18], NSForegroundColorAttributeName:[UIColor whiteColor]}];
    nav2.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.7 alpha:1.0];
    [nav2.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18], NSForegroundColorAttributeName:[UIColor whiteColor]}];
    nav3.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.7 alpha:1.0];
    [nav3.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18], NSForegroundColorAttributeName:[UIColor whiteColor]}];
    nav4.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.7 alpha:1.0];
    [nav4.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18], NSForegroundColorAttributeName:[UIColor whiteColor]}];
            
    nav1.navigationBarHidden = YES;
    
    nav1.view.backgroundColor = [UIColor whiteColor];
    nav2.view.backgroundColor = [UIColor whiteColor];
    nav3.view.backgroundColor = [UIColor whiteColor];
    nav4.view.backgroundColor = [UIColor whiteColor];
    
    UITabBarItem* tabBarItem2 = [UITabBarItem new];
    tabBarItem2.image = [[UIImage imageNamed:@"线性春.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem2.selectedImage = [[UIImage imageNamed:@"线性春.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem* tabBarItem3 = [UITabBarItem new];
    tabBarItem3.image = [[UIImage imageNamed:@"线性春.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem3.selectedImage = [[UIImage imageNamed:@"线性春.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem* tabBarItem4 = [UITabBarItem new];
    tabBarItem4.image = [[UIImage imageNamed:@"线性春.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem4.selectedImage = [[UIImage imageNamed:@"线性春.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    nav2.tabBarItem = tabBarItem2;
    nav2.navigationController.title = @"签到";

    nav3.tabBarItem = tabBarItem3;
    nav3.navigationController.title = @"个人中心";
    
    nav4.tabBarItem = tabBarItem4;
    nav4.navigationController.title = @"发起签到";
    
    KaoqinViewController* vc = [[KaoqinViewController alloc] init];
    UINavigationController* countnav = [[UINavigationController alloc] initWithRootViewController:vc];
    
    TeacherLeaveViewController *teacherVC = [[TeacherLeaveViewController alloc] init];
    UINavigationController* teachernav = [[UINavigationController alloc] initWithRootViewController:teacherVC];
    
    vc.title = @"我的记录单";
    teacherVC.title = @"记录单";
    teachernav.title = @"教师端";
    countnav.title = @"学生端";
    
    nav2.title = @"签到";
    nav3.title = @"个人中心";
    nav4.title = @"发起签到";
    //创建分栏控制器
    UITabBarController* tbController = [UITabBarController new];
    tbController.tabBar.barTintColor = [UIColor whiteColor];
    NSArray* arrayVc = [NSArray arrayWithObjects: nav1, nav2, nav3, nav4, countnav, teachernav, nil];
            
    tbController.viewControllers = arrayVc;
    self.window.rootViewController = tbController;
    tbController.tabBar.translucent = YES;  //不透明
    [self.window makeKeyAndVisible];

}



- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
