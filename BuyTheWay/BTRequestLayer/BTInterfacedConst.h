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






