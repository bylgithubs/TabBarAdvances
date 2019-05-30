//
//  AppDelegate.m
//  TabBarAdvances
//
//  Created by Civet on 2019/5/23.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"
#import "SixthViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    //创建一组视图控制器
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    FourthViewController *fourthVC = [[FourthViewController alloc] init];
    FifthViewController *fifthVC = [[FifthViewController alloc] init];
    SixthViewController *sixthVC = [[SixthViewController alloc] init];
    
    firstVC.view.backgroundColor = [UIColor redColor];
    secondVC.view.backgroundColor = [UIColor orangeColor];
    thirdVC.view.backgroundColor = [UIColor yellowColor];
    fourthVC.view.backgroundColor = [UIColor greenColor];
    fifthVC.view.backgroundColor = [UIColor blueColor];
    sixthVC.view.backgroundColor = [UIColor purpleColor];
    
    firstVC.title = @"视图1";
    secondVC.title = @"视图2";
    thirdVC.title = @"视图3";
    fourthVC.title = @"视图4";
    fifthVC.title = @"视图5";
    sixthVC.title = @"视图6" ;
    
    //创建数组
    NSArray *arrayVC = [NSArray arrayWithObjects:firstVC,secondVC,thirdVC,fourthVC,fifthVC,sixthVC,nil];
    UITabBarController *tabBarC = [[UITabBarController alloc] init];
    tabBarC.viewControllers = arrayVC;
    tabBarC.tabBar.translucent = NO;
    self.window.rootViewController = tabBarC;
    //改变工具栏颜色
    tabBarC.tabBar.barTintColor = [UIColor greenColor];
    //更改按钮风格颜色
    tabBarC.tabBar.tintColor = [UIColor blackColor];
    
    tabBarC.delegate = self;
    
    return YES;
}

//开始编辑前调用
- (void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers{
    NSLog(@"编辑前");
}
//将要结束调用
- (void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed{
    NSLog(@"将要结束调用");
}
//已经结束调用
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed{
    if (changed == YES){
        NSLog(@"顺序发生改变！");
    }
    NSLog(@"arrayVC=======%@",viewControllers);
    NSLog(@"已经结束编辑调用");
}
//选中视图调用
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    //NSLog(@"viewController=========%@",tabBarController.viewControllers[tabBarController.selectedIndex]);
    NSLog(@"选中控制器对象");
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
