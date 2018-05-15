//
//  ViewController.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/4/29.
//  Copyright © 2018年 思. All rights reserved.
//
#import "AFNetworking.h"
#import "ViewController.h"
#import "Addressee.pbobjc.h"
#import "NSString+SHA.h"
#import "PPNetworkHelper.h"
#import "BTHTTPRequest.h"
#import "AFNetworking.h"
#import "RSA.h"
#import "Common.pbobjc.h"
#import "Users.pbobjc.h"
#import "Business.pbobjc.h"
#import "BTInterfacedConst.h" 
#import "BasicEncodingRules.h"　　　　　　　　　　　　　　　　　　　　　　　　                               
#import "RSAEncryptor.h"
#import "BTHTTPRequest.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)postWithUrl:(NSString *)url body:(NSData *)body showLoading:(BOOL)show success:(void(^)(NSDictionary *response))success failure:(void(^)(NSError *error))failure
{
// http://w20w665489.51mypc.cn:23401/users/getTest1
    NSString *requestUrl = [NSString stringWithFormat:@"%@%@",kApiPrefix, @"/users/login"];
//    NSString *requestUrl = @"http://w20w665489.51mypc.cn:23401/users/getTest1";//[NSString stringWithFormat:@"%@%@",kApiPrefix, kGetkey];
    NSLog(@"网络请求：---》%@",requestUrl);
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"POST" URLString:requestUrl parameters:nil error:nil];
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
        LoginResponse *per = [LoginResponse parseDelimitedFromCodedInputStream:inputStream extensionRegistry:nil error:&error];
        NSLog(@"%@  ---- >>   %@",per.retCode,per.token);
        if (error){
            return;
        }
        
    }] resume];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    LoginRequest *loginr = [[LoginRequest alloc]init];
    loginr.identityType = 1;//登录类型（手机号 邮箱 用户名,邮箱跟用户名暂时没有，不管
    loginr.identifier = @"18023008100" ; //标识（手机号 邮箱 用户名或第三方应用的唯一标识）,邮箱跟用户名登陆暂时没有 后续也可以存储到里面
    loginr.credential = @"3" ; //站内的保存密码及跟pwd相同，站外的不保存或保存token
    NSString *t=@"555";
    loginr.aesKey = [t dataUsingEncoding:NSUTF8StringEncoding];
    loginr.deviceType = 2;
    
    
    GetPubKeyRequest *keyrequest = [[GetPubKeyRequest alloc]init];
    keyrequest.account = @"555";
//    keyrequest.aesKey = [NSData alloc]ini;
    NSString *requestStr = [[ NSString alloc] initWithData:[loginr data] encoding:NSUTF8StringEncoding];
    RSAEncryptor *rsaEncryptor = [[RSAEncryptor alloc] init];
    NSString* publicKeyPath = [[NSBundle mainBundle] pathForResource:@"public_key" ofType:@"der"];
    NSString* privateKeyPath = [[NSBundle mainBundle] pathForResource:@"private_key" ofType:@"p12"];
    [rsaEncryptor loadPublicKeyFromFile: publicKeyPath];
    [rsaEncryptor loadPrivateKeyFromFile: privateKeyPath password:@""];    // 这里，请换成你生成p12时的密码
    NSString* restrinBASE64STRING = [rsaEncryptor rsaEncryptString:requestStr];
    EncryptedPack *pack  = [[EncryptedPack alloc]init];
    pack.packContent = [restrinBASE64STRING dataUsingEncoding:NSUTF8StringEncoding];
    
    [BTHTTPRequest loginWithParameters:[pack data] success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
    
    [self smg];
    


}
-(void)smg{
    GetSmsRequest *number = [[GetSmsRequest alloc]init];
    PhoneNumber *phoneNu =  [[PhoneNumber alloc]init];
    phoneNu.phone = @"18023008100";
    phoneNu.phonePre = @"+86";
    number.phoneNumber = phoneNu;
    number.smsType = 2;
    NSString *requestStr = [[ NSString alloc] initWithData:[number data] encoding:NSUTF8StringEncoding];
    RSAEncryptor *rsaEncryptor = [[RSAEncryptor alloc] init];
    NSString* publicKeyPath = [[NSBundle mainBundle] pathForResource:@"public_key" ofType:@"der"];
    NSString* privateKeyPath = [[NSBundle mainBundle] pathForResource:@"private_key" ofType:@"p12"];
    [rsaEncryptor loadPublicKeyFromFile: publicKeyPath];
    [rsaEncryptor loadPrivateKeyFromFile: privateKeyPath password:@""];    // 这里，请换成你生成p12时的密码
    NSString* restrinBASE64STRING = [rsaEncryptor rsaEncryptString:requestStr];
    EncryptedPack *pack  = [[EncryptedPack alloc]init];
    pack.packContent = [restrinBASE64STRING dataUsingEncoding:NSUTF8StringEncoding];
    [BTHTTPRequest smsResponseWithParameters:[pack  data] success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
    
}
-(void)zhuce{
    
    
    
    
}
    

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
