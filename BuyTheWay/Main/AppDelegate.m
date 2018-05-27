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
#import "BTBoxView.h"
//#import "HHH.h"
#import "BTLuggageTableViewCell.h"

#define L2 FIX_SCREEN_WIDTH(100)
#define H2 FIX_SCREEN_WIDTH(130)
#define W2 FIX_SCREEN_WIDTH(50)
@interface AppDelegate ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,assign)CGFloat h1;
@property(nonatomic,assign)CGFloat w;
@property(nonatomic,assign)CGFloat l;
//@property(nonatomic,strong)HHH *h;
@property(nonatomic,strong)UITableView *tableView;
@end
//
@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    [[FBSDKApplicationDelegate sharedInstance] application:application
//                             didFinishLaunchingWithOptions:launchOptions];
     [UMConfigure initWithAppkey:@"5af994768f4a9d68520000e6" channel:nil];
//    [[BTBuyerViewController alloc]init];
    [self initView];
    UIViewController *vc = [[UIViewController alloc]init];
    
    vc.view.backgroundColor = [UIColor whiteColor];
    
    
    [vc.view addSubview:self.tableView];
//    UIView *bgView = [[UIView alloc]
//                      initWithFrame:CGRectMake(0, 10, 300, 300)];
//    bgView.backgroundColor = [UIColor whiteColor];
//    self.h1 = 200;
//    self.w = 100;
//    self.l = 150;
//    BTBoxView *boxView = [[BTBoxView alloc]initWithFrame:CGRectMake(15, 10, self.l + self.w * 0.707 ,self.h1+ self.w*0.707 )];
//     boxView.maxH = self.h1;
//     boxView.maxW = self.w;
//     boxView.maxL = self.l;
//    [boxView  updatBoxModel];
////    [boxView updateL:10 w:30 h:30];
//    [bgView addSubview:boxView ];
//    [vc.view addSubview:bgView];
    self.window.rootViewController =  [[BTWRootViewController alloc]init];
//    [self.window makeKeyAndVisible];
    
//    UIViewController *vc = [[UIViewController alloc]init];
//    vc.view.backgroundColor = UIColor.whiteColor;
//    self.h1 = 200;
//    self.w = 100;
//    self.l = 150;
//    self.h = [[HHH alloc]initWithFrame:CGRectMake(15, 10, self.l + self.w * 0.707 ,self.h1+ self.w*0.707 )];
//    self.h.maxH = self.h1;
//    self.h.maxW = self.w;
//    self.h.maxL = self.l;
//    [self.h updatBoxModel];
//    [vc.view addSubview:self.h ];
//    self.window.rootViewController = vc;
    [self configUSharePlatforms];
    return YES;
}
-(void)initView{
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
    self.tableView.backgroundColor = RGB(245, 245, 245);
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.rowHeight = 304/2 * SCALE_WIDTH;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.tableFooterView = [[UIView alloc]init];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
//    [self.tableView registerClass:[BTFlightAddressCell class] forCellReuseIdentifier:@"BTFlightAddressCell"];
//    [self.tableView registerClass:[BTLuggageTableViewCell class] forCellReuseIdentifier:@"BTLuggageTableViewCell"];

//    self.nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [self.nextBtn setTitle:@"下一步" forState:0];
//    [self.nextBtn addTarget:self action:@selector(tapNestBtn) forControlEvents:1<<6];
//    [self.view addSubview:self.nextBtn];
//    [self.nextBtn setTitleColor:[UIColor whiteColor] forState:0];
//    self.nextBtn.backgroundColor = coloNav;
//    self.nextBtn.sd_layout.heightIsScale(45).leftSpaceToView(self.view, 0).rightSpaceToView(self.view, 0).bottomSpaceToView(self.view, 0);
//    self.tableView.sd_layout.topSpaceToViewScale(self.view, 0).rightSpaceToView(self.view, 0).leftSpaceToView(self.view, 0).bottomSpaceToView(self.nextBtn, 0);
//    self.xinliBool = YES;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return  1;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//    if ( cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
        self.h1 = 200;
        self.w = 100;
        self.l = 150;
        BTBoxView *boxView = [[BTBoxView alloc]initWithFrame:CGRectMake(15, 10, self.l + self.w * 0.707 ,self.h1+ self.w*0.707 )];
         boxView.maxH = self.h1;
         boxView.maxW = self.w;
         boxView.maxL = self.l;
        [boxView  updatBoxModel];
    //    [boxView updateL:10 w:30 h:30];
        [cell.contentView addSubview:boxView ];
        
//    }
    
        return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    if(indexPath.section == 0){
//        return 304/2 * SCALE_WIDTH;
//    }else if (indexPath.section == 1){
//        if (self.xinliBool == YES) {
            return 340 * SCALE_WIDTH;
//        } else {
//            return 70 * SCALE_WIDTH ;
//        }
//
//    }else{
//        if (self.suishen == YES) {
//            return 340 * SCALE_WIDTH;
//        } else {
//            return 70 * SCALE_WIDTH ;
//        }
//    }
    
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
