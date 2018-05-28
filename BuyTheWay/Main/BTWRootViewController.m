//
//  SNRootViewController.m
//  SmartNote
//
//  Created by Rick on 21/01/2018.
//  Copyright © 2018 Rick. All rights reserved.
//

#import "BTWRootViewController.h"
#import "BBNavigationViewController.h"
@interface BTWRootViewController ()

@end

@implementation BTWRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    NSArray<NSString *> *classes = @[@"BTWHomeViewController", @"BTWVillageViewController", @"BTWIMViewController", @"BTWMeViewController"];
    NSArray<NSString *> *icons = @[@"icon_tab_journals", @"icon_tab_journals", @"icon_tab_journals", @"icon_tab_journals"];
    NSArray *titles = @[@"首页", @"村庄", @"消息", @"我"];
    
    NSMutableArray<UIViewController *> *vcs = [NSMutableArray new];
    
    for(int i=0; i < titles.count; i++)
    {
        UIViewController *vc = [[NSClassFromString(classes[i]) alloc] init];
        UIImage *normalIcon = [[UIImage imageNamed:icons[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        UIImage *hlIcon = [[UIImage imageNamed:[icons[i] stringByAppendingString:@"_hl"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        NSString *title = [SNUtils LocalizedString:titles[i]];
        
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:titles[i] image:normalIcon selectedImage:hlIcon];
        
        vc.tabBarItem = item;
        [item setTitleTextAttributes:@{NSForegroundColorAttributeName: kHexRGB(0x222222)} forState:UIControlStateNormal];
        [item setTitleTextAttributes:@{NSForegroundColorAttributeName: [SNTheme themeColor]} forState:UIControlStateSelected];
        
        BBNavigationViewController *navi = [[BBNavigationViewController alloc] initWithRootViewController:vc];
        [vcs addObject:navi];
    }
    
    [self setViewControllers:vcs];
//    [SNUtils showHUDWithStatus:@"BTWRootViewController"];
    self.tabBar.tintColor = [SNTheme themeColor];
    self.tabBar.barTintColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
