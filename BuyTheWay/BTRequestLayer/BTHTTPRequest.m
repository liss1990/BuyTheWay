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
#import "Sell.pbobjc.h"
#import "Addressee.pbobjc.h"
@implementation BTHTTPRequest

+(BOOL)showHud:(RetCode *)coder{
    if (coder.code == 1) {
        [SNUtils showHUDSuccessWithStatus:coder.msg];
          [SNUtils hideHUD];
        return YES;
    }else{
        [SNUtils showHUDErrorWithStatus:coder.msg];
          [SNUtils hideHUD];
        return  NO;
    }
}

/**login*/
+ (void)loginWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kLogin;
    [BTWNetworkHelper requestWithUrl:url methodType:post isKey:false   body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        LoginResponse *per = [LoginResponse parseFromData:data error:&error];
        if ([self showHud:per.retCode]) {
              success(per);
        }
    } failure:^(NSError *error) {
        NSLog(@"网络错误-->>>>>%@",error.localizedDescription);
    }];
}

/**kRegister*/
+ (void)registerWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kRegister;
    [BTWNetworkHelper requestWithUrl:url methodType:post isKey:false  body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        ResetPwdResponse *per = [ResetPwdResponse parseFromData:data error:&error];
        if ([self showHud:per.retCode]) {
            success(per);
        }
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
    
}
/**smsResponse*/
+ (void)smsResponseWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kSmsResponse;
    [BTWNetworkHelper requestWithUrl:url methodType:post isKey:false  body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        GetSmsResponse *per = [GetSmsResponse parseFromData:data error:&error];
        if ([self showHud:per.retCode]) {
            success(per);
        }
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
    
}

/**ResetPwdRequest*/
+ (void)resetPwdRequestWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kResetPwdRequest;
    [BTWNetworkHelper requestWithUrl:url methodType:post isKey:true  body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        ResetPwdResponse *per = [ResetPwdResponse parseFromData:data error:&error];
        if ([self showHud:per.retCode]) {
            success(per);
        }
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
}

/**SaveAddress 保存地址t*/
+ (void)saveAddressWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kSaveAddress;
    [BTWNetworkHelper requestWithUrl:url methodType:post isKey:true  body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        BaseResponse *per = [BaseResponse parseFromData:data error:&error];
        if ([self showHud:per.retCode]) {
            success(per);
        }
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
}
/** 用户常用地址联系人列表获取 */
+ (void)getAddressWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kGetAddress;
    [BTWNetworkHelper requestWithUrl:url methodType:post isKey:true body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        GetUserAddresseeListResponse *per = [GetUserAddresseeListResponse parseFromData:data error:&error];
        if ([self showHud:per.retCode]) {
            success(per);
        }
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
    
}
/** 删除常用地址 */
+ (void)deleteAddressWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kDeleteAddress;
    [BTWNetworkHelper requestWithUrl:url methodType:post  isKey:true body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        ResetPwdResponse *per = [ResetPwdResponse parseFromData:data error:&error];
        if ([self showHud:per.retCode]) {
            success(per);
        }
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
}

/**获取航班信息 */
+ (void)searchFlightWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kSearchFlight;
    [BTWNetworkHelper requestWithUrl:url methodType:post isKey:true body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        SearchFlightInfoResponse *per = [SearchFlightInfoResponse parseFromData:data error:&error];
        if ([self showHud:per.retCode]) {
            success(per);
        }
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
}

/**卖家发布行程（航班）信息*/
+ (void)sellTripTaskWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kSellTripTask;
    [BTWNetworkHelper requestWithUrl:url methodType:post  isKey:true body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        ResetPwdResponse *per = [ResetPwdResponse parseFromData:data error:&error];
        if ([self showHud:per.retCode]) {
            success(per);
        }
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
}

/**买家发布信息 想购买的行程服务*/
+ (void)buyTripTaskWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kBuyTripTask;
    [BTWNetworkHelper requestWithUrl:url methodType:post  isKey:true body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        ResetPwdResponse *per = [ResetPwdResponse parseFromData:data error:&error];
        if ([self showHud:per.retCode]) {
            success(per);
        }
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
}
/**根据/buy/tripTask取回的id去匹配卖家发布列表*/
+ (void)marrySellTripTaskLisWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kMarrySellTripTaskList;
    [BTWNetworkHelper requestWithUrl:url methodType:post  isKey:true body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        ResetPwdResponse *per = [ResetPwdResponse parseFromData:data error:&error];
        if ([self showHud:per.retCode]) {
            success(per);
        }
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
}
/**取买家自己发布的需求列表*/
+ (void)getBuyTripTaskListWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kGetBuyTripTaskList;
    [BTWNetworkHelper requestWithUrl:url methodType:post  isKey:true body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        ResetPwdResponse *per = [ResetPwdResponse parseFromData:data error:&error];
        if ([self showHud:per.retCode]) {
            success(per);
        }
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
}

/**买家预约行程*/
+ (void)buyMarrySellTripTasktWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kBuyMarrySellTripTaskt;
    [BTWNetworkHelper requestWithUrl:url methodType:post isKey:true  body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        ResetPwdResponse *per = [ResetPwdResponse parseFromData:data error:&error];
        if ([self showHud:per.retCode]) {
            success(per);
        }
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
}

/**买家获得自己的订单列表状态（从预约开始*/
+ (void)buyGetOrderListWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure{
    NSString *url = kBuyGetOrderList;
    [BTWNetworkHelper requestWithUrl:url methodType:post  isKey:true body:parameters showLoading:YES success:^(id data) {
        NSError *error;
        ResetPwdResponse *per = [ResetPwdResponse parseFromData:data error:&error];
        if ([self showHud:per.retCode]) {
            success(per);
        }
    } failure:^(NSError *error) {
        NSLog(@"网络错误%@",error.localizedDescription);
    }];
}













@end
