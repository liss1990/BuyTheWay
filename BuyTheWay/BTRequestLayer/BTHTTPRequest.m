//
//  BTHTTPRequest.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/2.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTHTTPRequest.h"
#import "BTInterfacedConst.h"
#import "BTWNetworkHelper.h"
#import "Users.pbobjc.h"
#import "Common.pbobjc.h"
@implementation BTHTTPRequest
/**login*/
+ (void)loginWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kLogin;
    [BTWNetworkHelper requestWithUrl:url methodType:post  body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        LoginResponse *per = [LoginResponse parseDelimitedFromCodedInputStream:data extensionRegistry:nil error:&error];
        NSLog(@"%@  ---- >>   %@",per.retCode,per.token);
        success(per);
    } failure:^(NSError *error) {
        NSLog(@"网络错误-->>>>>%@",error.localizedDescription);
    }];
}

/**kRegister*/
+ (void)registerWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kRegister;
    [BTWNetworkHelper requestWithUrl:url methodType:post  body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        RegisterAfterRequest *per = [RegisterAfterRequest parseDelimitedFromCodedInputStream:data extensionRegistry:nil error:&error];
        success(per);
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
    
}
/**smsResponse*/
+ (void)smsResponseWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kSmsResponse;
    [BTWNetworkHelper requestWithUrl:url methodType:post  body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        GetSmsResponse *per = [GetSmsResponse parseDelimitedFromCodedInputStream:data extensionRegistry:nil error:&error];
        success(per);
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
    
}

/**ResetPwdRequest*/
+ (void)resetPwdRequestWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kResetPwdRequest;
    [BTWNetworkHelper requestWithUrl:url methodType:post  body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        ResetPwdResponse *per = [ResetPwdResponse parseDelimitedFromCodedInputStream:data extensionRegistry:nil error:&error];
        success(per);
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
    
    
    
    
    
    
    
    
}















@end
