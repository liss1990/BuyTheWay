//
//  AppDelegate.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/4/29.
//  Copyright © 2018年 思. All rights reserved.
//

#import "AppDelegate.h"
#import "BTWRootViewController.h"
#import <UMCommon/UMCommon.h>
#import <UMShare/UMShare.h>
#import "HYLoginViewController.h"
#import "BTBuyerViewController.h"
@interface AppDelegate ()

@end
//
@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    [[FBSDKApplicationDelegate sharedInstance] application:application
//                             didFinishLaunchingWithOptions:launchOptions];
     [UMConfigure initWithAppkey:@"5af994768f4a9d68520000e6" channel:nil];
//    [[BTBuyerViewController alloc]init];
    self.window.rootViewController =  [[BTWRootViewController alloc]init];
    [self.window makeKeyAndVisible];
    
    
    [self configUSharePlatforms];
    return YES;
}

- (void)configUSharePlatforms
{
    /* 设置微信的appKey和appSecret */
    /* 设置Twitter的appKey和appSecret */
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_Twitter appKey:@"rsSOuVa6QFdNSiFgxPxDx9ZFv"  appSecret:@"OWEjKgY7rKkrIXuhMZdlYFlm4NZt1hs1LIrOlnvBDnBNTHXTYJ" redirectURL:@"http://www.buytheway.top"];
    /* 设置Facebook的appKey和UrlString */
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_Facebook appKey:@"c2788336479cbf7891449cfadc469bca"  appSecret:nil redirectURL:@"http://www.buytheway.top"];
    
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
