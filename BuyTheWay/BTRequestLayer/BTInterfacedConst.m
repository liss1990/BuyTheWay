//
//  BTInterfacedConst.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/1.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTInterfacedConst.h" 
NSString *const post=@"POST";
NSString *const get=@"GET";
#if DevelopSever
/** 接口前缀-开发服务器*/
NSString *const kApiPrefix = @"http://w20w665489.51mypc.cn:23401";
#elif TestSever
/** 接口前缀-测试服务器*/
NSString *const kApiPrefix = @"https://www.baidu.com";
#elif ProductSever
/** 接口前缀-生产服务器*/
NSString *const kApiPrefix = @"https://www.baidu.com";
#endif

/**注册*/
NSString *const kRegister=@"/users/register";
/**获取短信验证码*/
NSString *const kSmsResponse=@"/users/getSmsCode";
/** 登录*/
NSString *const kLogin = @"/users/login";
/**重置用户密码*/
NSString *const kResetPwdRequest=@"/users/resetPwd";
/** 添加用户常用收件人信息保存*/
NSString *const kSaveAddress=@"/addressee/saveCommonAddresses";
/** 用户常用地址联系人列表获取 */
NSString *const kGetAddress=@"/addressee/getCommonAddress";
/** 删除常用地址 */
NSString *const kDeleteAddress=@"/addressee/delete";

/** 获取航班信息*/
NSString *const kSearchFlight=@"/sell/flight/search";

/** 卖家发布行程（航班）信息*/
NSString *const kSellTripTask=@"/sell/tripTask";
/** 买家发布信息 想购买的行程服务*/
NSString *const kBuyTripTask=@"/buy/tripTask";
/** 买家发布信息 想购买的行程服务*/
NSString *const kMarrySellTripTaskList=@"/buy/marrySellTripTaskList";
/** 取买家自己发布的需求列表 */
NSString *const kGetBuyTripTaskList=@"/buy/getBuyTripTaskList";
/**  买家预约行程 */
NSString *const kBuyMarrySellTripTaskt=@"/buy/buyMarrySellTripTask";
/** 买家获得自己的订单列表状态（从预约开始）*/
NSString *const kBuyGetOrderList=@"/buy/getOrderList"; 

















