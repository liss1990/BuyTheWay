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




@end
