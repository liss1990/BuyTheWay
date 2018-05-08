//
//  SNTheme.h
//  SmartNote
//
//  Created by Rick on 21/01/2018.
//  Copyright © 2018 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UITabBar (SN_Theme)

- (void)sn_themeSetting;

@end

@interface SNTheme : NSObject

+ (UIColor *)themeColor;
+ (void)setup;

@end
