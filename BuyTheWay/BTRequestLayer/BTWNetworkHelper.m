//
//  BTWNetworkHelper.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/8.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTWNetworkHelper.h"
#import "AFNetworking.h"
#import "RSA.h"
#import "Common.pbobjc.h"
#import "Users.pbobjc.h"

#import "BTInterfacedConst.h"
@implementation BTWNetworkHelper


+(void)requestWithUrl:(NSString *)url methodType:(NSString*)type body:(NSData *)body showLoading:(BOOL)show success:(successBlock)success failure:(failureBlock)failure{
    NSString *requestUrl = [NSString stringWithFormat:@"%@%@",kApiPrefix, url];
    //    NSString *requestUrl = @"http://w20w665489.51mypc.cn:23401/users/getTest1";
    NSLog(@"网络请求：---》%@",requestUrl);
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:type URLString:requestUrl parameters:nil error:nil];
    request.timeoutInterval= 30;
    [request setValue:@"application/x-protobuf" forHTTPHeaderField:@"Content-Type"];
    // 设置body
    [request setHTTPBody:body];
    AFHTTPResponseSerializer *responseSerializer = [AFHTTPResponseSerializer serializer];
    responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",
                                                 @"text/html",
                                                 @"text/json",
                                                 @"text/javascript",
                                                 @"text/plain",
                                                 @"application/x-protobuf",
                                                 @"application/octet-stream",
                                                 nil];
    manager.responseSerializer = responseSerializer;
    [[manager dataTaskWithRequest:request completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        NSLog(@"%@---%@",responseObject,error.localizedDescription);
        //二进制数据反序列化为对象
        GPBCodedInputStream *inputStream = [GPBCodedInputStream streamWithData:responseObject]; 
        if (error){
            failure(error);
        }else{
            success(inputStream);
        }
    }] resume];
    
    
}
 













@end
