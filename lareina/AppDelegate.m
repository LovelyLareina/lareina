//
//  AppDelegate.m
//  lareina
//
//  Created by 孙晨 on 2018/8/29.
//  Copyright © 2018年 lucky. All rights reserved.
//

#import "AppDelegate.h"
#import "LLHomeViewController.h"
#import "LLContentViewController.h"
#import "LLMineViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
#pragma mark - 设置tabBarItem
#pragma mark  第一个视图ViewController
    
    LLHomeViewController * homeView = [[LLHomeViewController alloc] init];
    // 设置A视图下----标签栏标题文字(可参照微信或者QQ体会)
//    homeView.tabBarItem.title = @"首页";
    homeView.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
    // 设置A视图下----标签栏图片(因为自己没有图片,在这里随便设置了个名字)
    //home.tabBarItem.image = [UIImage imageNamed:@"1.png"];
    // 设置A视图下----标签栏信息提示(住:badgeValue是NSString类型 如下设置了3,就像QQ消息有3条未接受一样,给人一种提醒)
//    homeView.tabBarItem.badgeValue = @"3";
    UINavigationController * home = [[UINavigationController alloc] initWithRootViewController:homeView];
    homeView.title = @"首页";
    
#pragma mark  第二个视图ViewController
    // 第二个视图ViewController
    LLContentViewController * contentView = [[LLContentViewController alloc] init];
//    contentView.tabBarItem.title = @"内容";
    // 设置B视图下----标签栏
    // 用系统提供的标识(可以算等价于图标和文字)进行设置(参数:UITabBarSystemItem是个枚举值,想要什么形式,就去系统提供的API中找)
    contentView.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemMostRecent tag:2];
    // 设置B视图下----标签栏信息提示
//    contentView.tabBarItem.badgeValue = @"GO";
    UINavigationController * content = [[UINavigationController alloc] initWithRootViewController:contentView];
    contentView.title = @"内容";
    
#pragma mark  第三个视图ViewController
    LLMineViewController * mineView = [[LLMineViewController alloc] init];
//    mineView.tabBarItem.title = @"我的";
    mineView.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemContacts tag:3];
    // 设置B视图下----标签栏信息提示
//    mineView.tabBarItem.badgeValue = @"new";
    UINavigationController * mine = [[UINavigationController alloc] initWithRootViewController:mineView];
    mineView.title = @"我的";
#pragma mark - 设置TabBarController
    
    // 创建TabBarController
    UITabBarController * tabBarController = [[UITabBarController alloc]init];
    // TabBarController默认是放在最底部的,如果你想调整位置,可以进行下面2部操作(44是iPhone中TabBarController和UINavigationController标准高度)
    //CGRect frame = CGRectMake(0, 20, 320, 44);
    //tabBarController.tabBar.frame = frame;
    // 每一个tab都必须有一个content view controller------->viewControllers属性,用来存入一个应用的TabBarController有多少个界面切换
    tabBarController.viewControllers = [NSArray arrayWithObjects:home,content,mine, nil];
    // 设置着色
    tabBarController.tabBar.tintColor = [UIColor greenColor];
    // 设置选中图片时候
    tabBarController.tabBar.selectedImageTintColor = [UIColor brownColor];
    // 设置背景图片(自己没有图片,不进行设置)
    //tabBarController.tabBar.backgroundImage = [UIImage imageNamed:@"@@@@@"];
    // 设置程序启动时默认的ViewController视图(设置为3,一共5个ViewController,进来时候显示的视图就是第4个-tabBarViewD,下标从0开始)
    tabBarController.selectedIndex = 3;
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    
    return YES;
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
