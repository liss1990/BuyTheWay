//
//  SNUtils.m
//  SmartNote
//
//  Created by Rick on 21/01/2018.
//  Copyright © 2018 Rick. All rights reserved.
//

#import "SNUtils.h"

#import "SVProgressHUD.h"

@implementation SNUtils
+ (void)showHUD
{
    [self setupHud];
    [SVProgressHUD show];
}

+(void)showHUDWithStatus:(NSString *)status{
    [self setupHud];
    [SVProgressHUD showWithStatus:status];
}

+(void)hideHUD{
    [self setupHud];
    [SVProgressHUD dismissWithDelay:1.5];
}

+(void)showHUDSuccessWithStatus:(NSString *)status{
    [self setupHud];
    [SVProgressHUD showSuccessWithStatus:status];
}
+(void)showHUDErrorWithStatus:(NSString *)status{
    [self setupHud];
    [SVProgressHUD showErrorWithStatus:status];
}

+ (void)setupHud
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    });
}

+(NSString *)LocalizedString:(NSString *)str{
    return  USLocalizedString(str,nil);
}
+ (NSString *)timeWithTimeIntervalString:(NSString *)timeString
{
    //    NSTimeInterval time=[timeString doubleValue]+28800;//因为时差问题要加8小时 == 28800 sec
    //
    //    NSDate*detaildate=[NSDate dateWithTimeIntervalSince1970:time];
    NSTimeInterval _interval=[[timeString substringToIndex:10] doubleValue];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:_interval];
    //实例化一个NSDateFormatter对象
    
    NSDateFormatter*dateFormatter = [[NSDateFormatter alloc]init];
    
    //设定时间格式,这里可以设置成自己需要的格式
    
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    NSString*currentDateStr = [dateFormatter stringFromDate:date];
    
    return currentDateStr;
}

+(NSString *)timeWithTimeIntervalString:(NSString *)timeString formate:(NSString*)formate{
    NSTimeInterval _interval=[[timeString substringToIndex:10] doubleValue];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:_interval];
    //实例化一个NSDateFormatter对象
    NSDateFormatter*dateFormatter = [[NSDateFormatter alloc]init];
    //设定时间格式,这里可以设置成自己需要的格式
    [dateFormatter setDateFormat:formate];
    NSString*currentDateStr = [dateFormatter stringFromDate:date];
    return currentDateStr;
}
@end
