//
//  BBNavigationViewController.m
//  babasuper
//
//  Created by 李丝思 on 2017/2/8.
//  Copyright © 2017年 lx. All rights reserved.
//

#import "BBNavigationViewController.h" 
#import "UIButton+extend.h"
@interface BBNavigationViewController ()<UINavigationControllerDelegate,UIGestureRecognizerDelegate>

@end

@implementation BBNavigationViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
//   [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContentanimated:NO];
    self.navigationBar.barTintColor = RGB(38, 166, 154);
    // 设置导航条title属性
    [self.navigationBar setTitleTextAttributes:
     @{NSFontAttributeName:[UIFont boldSystemFontOfSize:17],
       NSForegroundColorAttributeName:[UIColor whiteColor]}];
//    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
//    //隐藏导航栏下面的线
//    [[UINavigationBar appearance] setBackgroundImage:[[UIImage alloc] init]
//                                      forBarPosition:UIBarPositionAny
//                                          barMetrics:UIBarMetricsDefault];
//    [[UINavigationBar appearance] setShadowImage:[[UIImage alloc] init]];
    
}


-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count>0) {
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [self createBackButton];
    }
    [super pushViewController:viewController animated:animated];

}
-(UIBarButtonItem*) createBackButton
{
    UIImage* image= [UIImage imageNamed:@"ic_back_normal"];
    UIButton* backButton= [UIButton buttonWithType:UIButtonTypeCustom];
    [backButton setBackgroundImage:image forState:UIControlStateNormal];
    [backButton setTitle:@"   " forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(back)
         forControlEvents:UIControlEventTouchUpInside];
    [backButton setEnlargeEdgeWithTop:15 right:15 bottom:15 left:15];
    UIBarButtonItem* someBarButtonItem= [[UIBarButtonItem alloc] initWithCustomView:backButton];
    return someBarButtonItem;
}
- (void)back
{
    [self popViewControllerAnimated:YES];
}
 
- (void)viewDidLoad {
    [super viewDidLoad];
//    self.delegate = self;
//    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
//        self.navigationController.interactivePopGestureRecognizer.enabled = YES;
//        self.navigationController.interactivePopGestureRecognizer.delegate = self;
//    }
////    // 关闭边缘触发手势 防止和原有边缘手势冲突
//    [self.interactivePopGestureRecognizer setEnabled:NO];
}

//  防止导航控制器只有一个rootViewcontroller时触发手势
//- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer {
//    // 解决右滑和UITableView左滑删除的冲突
//    CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
//    if (translation.x <= 0) {
//        return NO;
//    }
//
//    return self.childViewControllers.count == 1 ? NO : YES;
//}


 
@end
