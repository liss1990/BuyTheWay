//
//  SNTheme.m
//  SmartNote
//
//  Created by Rick on 21/01/2018.
//  Copyright © 2018 Rick. All rights reserved.
//

#import "SNTheme.h"

@implementation UITabBar (SN_Theme)

- (void)sn_themeSetting
{
    for(UITabBarItem *item in self.items)
    {
        [item setTitleTextAttributes:@{NSForegroundColorAttributeName: kHexRGB(0x222222)} forState:UIControlStateNormal];
        item.image = [item.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
}

@end


@implementation SNTheme

+ (UIColor *)themeColor
{
    return kHexRGB(0xf1476e);
}

+ (void)setup
{
    [UINavigationBar appearance].backIndicatorImage = [UIImage imageNamed:@"Book_back2"];
    [UINavigationBar appearance].backIndicatorTransitionMaskImage = [UIImage imageNamed:@"Book_back2"];
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(-300, 0)                                                         forBarMetrics:UIBarMetricsDefault];
    [UIBarButtonItem appearance].tintColor = kHexRGB(0x222222);
    
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:15], NSForegroundColorAttributeName: kHexRGB(0x222222)}];
}
@end
