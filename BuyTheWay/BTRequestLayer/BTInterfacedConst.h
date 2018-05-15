//
//  BTInterfacedConst.h
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/1.
//  Copyright © 2018年 思. All rights reserved.
//

#import <UIKit/UIKit.h>

#define DevelopSever 1
#define TestSever    0
#define ProductSever 0
UIKIT_EXTERN NSString *const post;
UIKIT_EXTERN NSString *const get;
/** 接口前缀-开发服务器*/
UIKIT_EXTERN NSString *const kApiPrefix;

#pragma mark - 详细接口地址
UIKIT_EXTERN NSString *const kGetkey;

/**注册*/
UIKIT_EXTERN NSString *const kRegister;
/**获取短信验证码*/
UIKIT_EXTERN NSString *const kSmsResponse;
/** 登录*/
UIKIT_EXTERN NSString *const kLogin;
/**重置用户密码*/
UIKIT_EXTERN NSString *const kResetPwdRequest;

/** 用户常用收件人信息保存*/
UIKIT_EXTERN NSString *const kSaveAddress;
/** 用户常用地址联系人列表获取 */
UIKIT_EXTERN NSString *const kGetAddress; 
/** 删除常用地址 */
UIKIT_EXTERN NSString *const kDeleteAddress;
/** 获取航班信息*/
UIKIT_EXTERN NSString *const kSearchFlight;
/** 卖家发布行程（航班）信息*/
UIKIT_EXTERN NSString *const kSellTripTask;
/** 买家发布信息 想购买的行程服务 */
UIKIT_EXTERN NSString *const kBuyTripTask;
/** 根据/buy/tripTask取回的id去匹配卖家发布列表*/
UIKIT_EXTERN NSString *const kMarrySellTripTaskList;
/** 取买家自己发布的需求列表 buy/getBuyTripTaskList*/
UIKIT_EXTERN NSString *const kGetBuyTripTaskList;
/**  买家预约行程 */
UIKIT_EXTERN NSString *const kBuyMarrySellTripTaskt;
/** 买家获得自己的订单列表状态（从预约开始）/buy/getOrderList */
UIKIT_EXTERN NSString *const kBuyGetOrderList; 
/**卖家 回复买家预约的 /sell/sellReplyTripTask*/
UIKIT_EXTERN NSString *const ksellReplyTripTask;
/**卖家查询发布的行程  getTripTaskList*/
UIKIT_EXTERN NSString *const kSellGetTripTaskList;

/**城市搜索 /sell/searchcity*/
UIKIT_EXTERN NSString *const kSellSearchcity;

/**常用城市搜索 请求/sell/common/searchcity*/
UIKIT_EXTERN NSString *const kSellCommonSearchcity;
/**卖家查询订单列表  /sell/getOrderList*/
UIKIT_EXTERN NSString *const kSellGetOrderList;























