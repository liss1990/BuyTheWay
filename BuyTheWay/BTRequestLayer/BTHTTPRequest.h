//
//  BTHTTPRequest.h
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/2.
//  Copyright © 2018年 思. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^BTRequestSuccess)(id response);

typedef void(^BTRequestFailure)(NSError *error);


@interface BTHTTPRequest : NSObject

/**login*/
+ (void)loginWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure;

/**kRegister*/
+ (void)registerWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure;
/**smsResponse*/
+ (void)smsResponseWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure;
/**ResetPwdRequest*/
+ (void)resetPwdRequestWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure;
/**SaveAddress 保存地址t*/
+ (void)saveAddressWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure;

/** 用户常用地址联系人列表获取 */
+ (void)getAddressWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure;
/** 删除常用地址 */
+ (void)deleteAddressWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure;

/**获取航班信息 */
+ (void)searchFlightWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure;

/**卖家发布行程（航班）信息*/
+ (void)sellTripTaskWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure;

/**买家发布信息 想购买的行程服务*/
+ (void)buyTripTaskWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure;
/**根据/buy/tripTask取回的id去匹配卖家发布列表*/
+ (void)marrySellTripTaskLisWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure;
/**取买家自己发布的需求列表*/
+ (void)getBuyTripTaskListWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure;

/**买家预约行程*/
+ (void)buyMarrySellTripTasktWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure;

/**买家获得自己的订单列表状态（从预约开始*/
+ (void)buyGetOrderListWithParameters:(id)parameters success:(BTRequestSuccess)success failure:(BTRequestFailure)failure;




@end
