//
//  HYLoginViewController.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/17.
//  Copyright © 2018年 思. All rights reserved.
//

#import "HYLoginViewController.h"
#import "BTHTTPRequest.h"
#import "Common.pbobjc.h"
#import "Users.pbobjc.h"
#import "Business.pbobjc.h"
#import "Addressee.pbobjc.h"
#import "NSString+SHA.h"
#import "Buy.pbobjc.h"
#import "Sell.pbobjc.h"
@interface HYLoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *loginTextfild;
@property (weak, nonatomic) IBOutlet UITextField *pwdTextfield;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextfield;
@property (weak, nonatomic) IBOutlet UITextField *codeTextfield;
@property (weak, nonatomic) IBOutlet UITextField *rpwdTextfield;

@end

@implementation HYLoginViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)loginBtn:(id)sender {
    LoginRequest *login = [[LoginRequest alloc]init];
    login.identityType = 1;
    login.identifier = [NSString stringWithFormat:@"+86@@%@", self.loginTextfild.text];
    NSString *str1 = @"r-H<\"<>,5){!bB(<|5#";
    NSString *str2 =@"D#[Hy;T(?8+;g~0M?wTa";
    NSString *sha512str =  [NSString stringWithFormat:@"%@%@",self.pwdTextfield.text,str1].sha512;
    NSString *sha256st = [NSString stringWithFormat:@"%@%@",sha512str,str2].sha256;
    login.credential = sha256st;
    login.deviceType = 2;
    [BTHTTPRequest loginWithParameters:login success:^(id response) {
        LoginResponse *logModel = response;
        User *user1 = [[User alloc]init];
        user1 = logModel.user;
        NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
        //        [user setObject:user1 forKey:@"userModel"];
        [user setObject:logModel.token forKey:@"token"];
        [user setObject:logModel.signKey forKey:@"signKey"];
        [user synchronize];
    } failure:^(NSError *error) {
        
    }];
    
}
- (IBAction)regBtn:(id)sender {
    RegisterRequest *reg = [[RegisterRequest alloc]init];
    PhoneNumber *phone = [[PhoneNumber alloc]init];
    phone.phonePre = @"+86";
    phone.phone = self.phoneTextfield.text;
    reg.phoneNumber = phone;
    reg.code = self.codeTextfield.text;
    
    NSString *str1 = @"r-H<\"<>,5){!bB(<|5#";
    NSString *str2 =@"D#[Hy;T(?8+;g~0M?wTa";
    NSString *sha512str =  [NSString stringWithFormat:@"%@%@",self.rpwdTextfield.text,str1].sha512;
    NSString *sha256st = [NSString stringWithFormat:@"%@%@",sha512str,str2].sha256;
    reg.pwd = sha256st;
    reg.nickName = @"李丝思";
    reg.identityType = IdentityTypeEnum_Mobile;
    reg.identifier = @"6";
    reg.credential = @"7";
    reg.isBind = 0;
    [BTHTTPRequest registerWithParameters:reg success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
}
- (IBAction)msgBtn:(id)sender {
    GetSmsRequest *smg = [[GetSmsRequest alloc]init];
    PhoneNumber *phone = [[PhoneNumber alloc]init];
    phone.phonePre = @"+86";
    phone.phone =self.phoneTextfield.text;
    smg.phoneNumber = phone;
    smg.smsType = 1 ;
    [BTHTTPRequest smsResponseWithParameters:smg success:^(id response) {
        
    } failure:^(NSError *error) {
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
