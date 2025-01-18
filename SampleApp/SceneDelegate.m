//
//  SceneDelegate.m
//  SampleApp
//
//  Created by 陈碧滔 on 2025/1/18.
//

#import "SceneDelegate.h"
#import "AppDelegate.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    if ([scene isKindOfClass:[UIWindowScene class]]) {
        UIWindowScene *windowScene = (UIWindowScene *)scene;
        self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
        // 在此处设置根视图控制器，例如：
        
        UITabBarController *tabBarController = [[UITabBarController alloc] init];
        
        UIViewController *infoFlow = [[UIViewController alloc] init];
        infoFlow.view.backgroundColor = [UIColor whiteColor];
        infoFlow.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"信息流" image:[UIImage imageNamed:@"info_flow"] tag:0];
        
        UIViewController *messageCenter = [[UIViewController alloc] init];
        messageCenter.view.backgroundColor = [UIColor whiteColor];
        messageCenter.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"消息" image:[UIImage imageNamed:@"message"] tag:0];
        messageCenter.tabBarItem.selectedImage = [UIImage imageNamed:@"message_selected"];
        
        UIViewController *discoverController = [[UIViewController alloc] init];
        discoverController.view.backgroundColor = [UIColor whiteColor];
        discoverController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"发现" image:[UIImage imageNamed:@"message"] tag:1];
        
        UIViewController *mapController = [[UIViewController alloc] init];
        mapController.view.backgroundColor = [UIColor whiteColor];
        mapController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"地图" image:[UIImage imageNamed:@"message"] tag:2];
        
        UIViewController *profileCenter = [[UIViewController alloc] init];
        profileCenter.view.backgroundColor = UIColor.whiteColor;
        profileCenter.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"message"] tag:3];
        
//        tabBarController.viewControllers = @[infoFlow, messageCenter, discoverController, mapController, profileCenter];
        [tabBarController setViewControllers:@[infoFlow,messageCenter, discoverController, mapController, profileCenter]];
        
        // 设置窗口的根视图控制器
        self.window.rootViewController = tabBarController;
        [self.window makeKeyAndVisible];

        // 同步到 AppDelegate 的 window 属性
        AppDelegate *appDelegate = (AppDelegate *)UIApplication.sharedApplication.delegate;
        appDelegate.window = self.window;
    }
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
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
