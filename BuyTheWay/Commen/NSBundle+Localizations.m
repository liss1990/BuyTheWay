//
//  NSBundle+Localizations.m
//  MultiLanguage
//
//  Created by marujun on 16/5/27.
//  Copyright © 2016年 MaRuJun. All rights reserved.
//

#import "NSBundle+Localizations.h"
#import <objc/runtime.h>

static const char kBundleKey = 0;

NSString *const UserDefaultKey_AppLanguage = @"AppLanguage";

@implementation BundleEx

- (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName
{
    NSBundle *bundle = objc_getAssociatedObject(self, &kBundleKey);
    if (bundle) {
        return [bundle localizedStringForKey:key value:value table:tableName];
    }
    else {
        return [super localizedStringForKey:key value:value table:tableName];
    }
}

@end

@implementation NSBundle (Localizations)

+ (void)setLanguage:(NSString *)language
{
    [[NSUserDefaults standardUserDefaults] setObject:language forKey:UserDefaultKey_AppLanguage];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        object_setClass([NSBundle mainBundle],[BundleEx class]);
    });
    id value = language ? [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:language ofType:@"lproj"]] : nil;
    objc_setAssociatedObject([NSBundle mainBundle], &kBundleKey, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

+ (void)setPreferredLanguage
{
//    // 设置默认语言
//    if (![[NSUserDefaults standardUserDefaults] objectForKey:UserDefaultKey_AppLanguage]) {
        NSArray *languages = [NSLocale preferredLanguages]; //系统偏好语言
        NSString *language = languages.firstObject;
        if ([language hasPrefix:@"zh-Hans"]) {
            [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:UserDefaultKey_AppLanguage];
        }
        else if ([language hasPrefix:@"en"]) {
            [[NSUserDefaults standardUserDefaults] setObject:@"en" forKey:UserDefaultKey_AppLanguage];
        }
        [[NSUserDefaults standardUserDefaults]synchronize];
//    }
    
    NSString *language2 = [[NSUserDefaults standardUserDefaults] objectForKey:UserDefaultKey_AppLanguage];
    [NSBundle setLanguage:language2];
}

+(NSString *)getLanguage{
    return [[NSUserDefaults standardUserDefaults] objectForKey:UserDefaultKey_AppLanguage];
}

@end
