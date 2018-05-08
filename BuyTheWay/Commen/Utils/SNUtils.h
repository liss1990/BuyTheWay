//
//  SNUtils.h
//  SmartNote
//
//  Created by Rick on 21/01/2018.
//  Copyright © 2018 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSBundle+Localizations.h"

@interface SNUtils : NSObject


#pragma mark - HUD
+ (void)showHUD;
+ (void)showHUDWithStatus:(NSString*)status;
+ (void)hideHUD;
+ (void)showHUDErrorWithStatus:(NSString*)status;
+ (void)showHUDSuccessWithStatus:(NSString*)status;

#pragma mark - 本地化
//本地化字符串
+(NSString*) LocalizedString:(NSString*)str;
/**
 
 时间搓转换成时间
 
 
 
 @param timeString
 
 @return
 
 */

+ (NSString *)timeWithTimeIntervalString:(NSString *)timeString;



+(NSString *)timeWithTimeIntervalString:(NSString *)timeString formate:(NSString*)formate;

@end
