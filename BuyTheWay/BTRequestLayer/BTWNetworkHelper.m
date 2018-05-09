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
#import "RSAEncryptor.h"
#import "BTInterfacedConst.h"
#import "Users.pbobjc.h"
#import "NSString+SHA.h"
@implementation BTWNetworkHelper


+(void)requestWithUrl:(NSString *)url methodType:(NSString*)type body:(id)body showLoading:(BOOL)show success:(successBlock)success failure:(failureBlock)failure{
    if (show) {
        [SVProgressHUD show];
    }
    NSString *requestUrl = [NSString stringWithFormat:@"%@%@",kApiPrefix, url];
    //    NSString *requestUrl = @"http://w20w665489.51mypc.cn:23401/users/getTest1";
    NSLog(@"网络请求：---》%@",requestUrl);
    NSString *requestStr = [[NSString alloc] initWithData:[body data] encoding:NSUTF8StringEncoding];
    RSAEncryptor *rsaEncryptor = [[RSAEncryptor alloc] init];
    NSString* publicKeyPath = [[NSBundle mainBundle] pathForResource:@"public_key" ofType:@"der"];
    NSString* privateKeyPath = [[NSBundle mainBundle] pathForResource:@"private_key" ofType:@"p12"];
    [rsaEncryptor loadPublicKeyFromFile: publicKeyPath];
    [rsaEncryptor loadPrivateKeyFromFile: privateKeyPath password:@""];    // 这里，请换成你生成p12时的密码
    NSString* restrinBASE64STRING = [rsaEncryptor rsaEncryptString:requestStr];
    EncryptedPack *pack  = [[EncryptedPack alloc]init]; 
    pack.len = [body data].length;
    pack.packContent = [restrinBASE64STRING dataUsingEncoding:NSUTF8StringEncoding];
    
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:type URLString:requestUrl parameters:nil error:nil];
    request.timeoutInterval= 30;
    [request setValue:@"application/x-protobuf" forHTTPHeaderField:@"Content-Type"];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults]; 
    NSString *token = [userDefaults objectForKey:@"token"];
    NSString *signKey = [userDefaults objectForKey:@"signKey"];
    NSDate* date = [NSDate dateWithTimeIntervalSinceNow:0];//获取当前时间0秒后的时间
    NSTimeInterval time=[date timeIntervalSince1970]*1000;// *1000 是精确到毫秒，不乘就是精确到秒
    NSString *timeString = [NSString stringWithFormat:@"%.0f", time];
    int  a = arc4random() % 10000000000;
    NSString *rand = [NSString stringWithFormat:@"%011d", a];
    [request setValue:timeString forHTTPHeaderField:@"timestamp"];
    [request setValue:token forHTTPHeaderField:@"token"];
    [request setValue:rand forHTTPHeaderField:@"rand"];
    [request setValue:@"application/x-protobuf" forHTTPHeaderField:@"sign"];
    NSString *base64Encoded = [[pack data] base64EncodedStringWithOptions:0];
    NSString *bodyKey = [NSString stringWithFormat:@"%@%@",base64Encoded,signKey].sha512;
    NSString *bodykey256 =[ NSString stringWithFormat:@"%@%@%@",bodyKey,timeString,rand];
    [request setValue:bodykey256 forHTTPHeaderField:@"sign"];
//    sign = sha256(sha512(Base64.encode(body)+signKey)+timestamp+rand)
    // 设置body
    [request setHTTPBody:[pack data]];
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
       [SVProgressHUD dismiss];
        //二进制数据反序列化为对象
//        GPBCodedInputStream *inputStream = [GPBCodedInputStream streamWithData:responseObject];
//        NSError *error;
//        RegisterResponse * per = [RegisterResponse parseFromData:responseObject error:nil];
//        RegisterResponse *per = [RegisterResponse parseDelimitedFromCodedInputStream:responseObject extensionRegistry:nil error:&error];
        if (error){
            failure(error);
        }else{
            success(responseObject);
        }
    }] resume];
    
    
}
 













@end
