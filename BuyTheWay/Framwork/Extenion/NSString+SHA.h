//
//  NSString+SHA.h
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/2.
//  Copyright © 2018年 思. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>
@interface NSString (SHA)
-(NSString *) sha1;
-(NSString *) sha224;
-(NSString *) sha256;
-(NSString *) sha384;
-(NSString *) sha512;
@end
