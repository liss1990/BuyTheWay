//
//  BTWNetworkHelper.h
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/8.
//  Copyright © 2018年 思. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Common.pbobjc.h" 
typedef void(^successBlock)( id data);
typedef void(^failureBlock)(NSError *error);

@interface BTWNetworkHelper : NSObject
+ (void)requestWithUrl:(NSString *)url methodType:(NSString*)type isKey:(BOOL)k body:(id)obj showLoading:(BOOL)show success:(successBlock)success failure:(failureBlock)failure;


@end
