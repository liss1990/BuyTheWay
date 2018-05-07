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
