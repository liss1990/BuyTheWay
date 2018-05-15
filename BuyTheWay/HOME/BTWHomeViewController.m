//
//  BTWHomeViewController.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/8.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTWHomeViewController.h"
#import "BTHTTPRequest.h"
#import "Common.pbobjc.h"
#import "Users.pbobjc.h"
#import "Business.pbobjc.h"
#import "Addressee.pbobjc.h"
#import "NSString+SHA.h"
#import "Buy.pbobjc.h"
#import "Sell.pbobjc.h"
@interface BTWHomeViewController ()
@property(nonatomic,strong)UIButton *smgBtn;
@property(nonatomic,strong)UIButton *registerBtn;

@property(nonatomic,strong)UIButton *loginBtn;
@property(nonatomic,strong)UIButton * ResetPwdBtn;
@property(nonatomic,strong)UIButton * saveAddressBtn;

@property(nonatomic,strong)UIButton * getAddressBtn;
@property(nonatomic,strong)UIButton * deleteAddressBtn;

@property(nonatomic,strong)UIButton * flightMessage; //获取航班信息;
@property(nonatomic,strong)UIButton * buytriptask; // 想购买的行程服务;
@end

@implementation BTWHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.registerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.registerBtn setTitle:@"注册" forState:0];
    self.registerBtn.backgroundColor = [UIColor redColor];
    self.registerBtn.frame = CGRectMake(10, 80, 120, 50);
    [self.registerBtn addTarget:self action:@selector(registerbtn) forControlEvents:1<<6];
    [self.view addSubview:self.registerBtn];
    
    self.loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.loginBtn setTitle:@"登录" forState:0];
    self.loginBtn.backgroundColor = [UIColor redColor];
    self.loginBtn.frame = CGRectMake(10, 80+ 60, 120, 50);
    [self.loginBtn addTarget:self action:@selector(login) forControlEvents:1<<6];
    [self.view addSubview:self.loginBtn];
    
    self.smgBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.smgBtn setTitle:@"发送验证码" forState:0];
    self.smgBtn.backgroundColor = [UIColor redColor];
    self.smgBtn.frame = CGRectMake(10, 80+ 60+60, 120, 50);
    [self.smgBtn addTarget:self action:@selector(smg) forControlEvents:1<<6];
    [self.view addSubview:self.smgBtn];
    
    self.ResetPwdBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.ResetPwdBtn setTitle:@"重置密码" forState:0];
    self.ResetPwdBtn.backgroundColor = [UIColor redColor];
    self.ResetPwdBtn.frame = CGRectMake(10, 80+ 60+60+60, 120, 50);
    [self.ResetPwdBtn addTarget:self action:@selector(smg) forControlEvents:1<<6];
    [self.view addSubview:self.ResetPwdBtn];
   
    self.saveAddressBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.saveAddressBtn setTitle:@"保存地址" forState:0];
    self.saveAddressBtn.backgroundColor = [UIColor redColor];
    self.saveAddressBtn.frame = CGRectMake(10, 80+ 60+60+60+60, 120, 50);
    [self.saveAddressBtn addTarget:self action:@selector(saveAddress) forControlEvents:1<<6];
    [self.view addSubview:self.saveAddressBtn];
    
    self.getAddressBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.getAddressBtn setTitle:@"地址联系人列表获取" forState:0];
    self.getAddressBtn.backgroundColor = [UIColor redColor];
    self.getAddressBtn.frame = CGRectMake(10+10+120, 80+ 60+60+60+60, 120, 50);
    [self.getAddressBtn addTarget:self action:@selector(getAddress) forControlEvents:1<<6];
    [self.view addSubview:self.getAddressBtn];
    
    self.deleteAddressBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.deleteAddressBtn setTitle:@"删除地址" forState:0];
    self.deleteAddressBtn.backgroundColor = [UIColor redColor];
    self.deleteAddressBtn.frame = CGRectMake(10+10+120, 80+ 60+60+60+60+60, 120, 50);
    [self.deleteAddressBtn addTarget:self action:@selector(deleteAddress) forControlEvents:1<<6];
    [self.view addSubview:self.deleteAddressBtn];
    
    
    
    
    self.flightMessage = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.flightMessage setTitle:@"获取航班信息" forState:0];
    self.flightMessage.backgroundColor = [UIColor redColor];
    self.flightMessage.frame = CGRectMake(10, 80+ 60+60+60+60+60, 120, 50);
    [self.flightMessage addTarget:self action:@selector(flight) forControlEvents:1<<6];
    [self.view addSubview:self.flightMessage];
    
    self.buytriptask = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.buytriptask setTitle:@"购买想买的服务" forState:0];
    self.buytriptask.backgroundColor = [UIColor redColor];
    self.buytriptask.frame = CGRectMake(10, 80+ 60+60+60+60+60+60, 120, 50);
    [self.buytriptask addTarget:self action:@selector(sellTripTask) forControlEvents:1<<6];
    [self.view addSubview:self.buytriptask];
    
}

-(void)smg{
    GetSmsRequest *smg = [[GetSmsRequest alloc]init];
    PhoneNumber *phone = [[PhoneNumber alloc]init];
    phone.phonePre = @"+86";
    phone.phone = @"18023008100";
    smg.phoneNumber = phone;
    smg.smsType = 1 ;
    [BTHTTPRequest smsResponseWithParameters:smg success:^(id response) {
        
    } failure:^(NSError *error) {
    }];
    
}

-(void)registerbtn{
    
    RegisterRequest *reg = [[RegisterRequest alloc]init];
    PhoneNumber *phone = [[PhoneNumber alloc]init];
    phone.phonePre = @"+86";
    phone.phone = @"18023008101";
    reg.phoneNumber = phone;
    reg.code = @"888888";
    
    NSString *str1 = @"r-H<\"<>,5){!bB(<|5#";
    NSString *str2 =@"D#[Hy;T(?8+;g~0M?wTa";
    NSString *sha512str =  [NSString stringWithFormat:@"11111111%@",str1].sha512;
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
-(void)login{
    LoginRequest *login = [[LoginRequest alloc]init];
    login.identityType = 1;
    login.identifier = @"+86@@18023008101";
    NSString *str1 = @"r-H<\"<>,5){!bB(<|5#";
    NSString *str2 =@"D#[Hy;T(?8+;g~0M?wTa";
    NSString *sha512str =  [NSString stringWithFormat:@"11111111%@",str1].sha512;
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

-(void)reset{
    ResetPwdRequest *reset = [[ResetPwdRequest alloc]init];
    PhoneNumber *phone = [[PhoneNumber alloc]init];
    phone.phonePre = @"+86";
    phone.phone = @"18023008100";
    reset.phoneNumber = phone;
    reset.code =@"2";
    reset.pwd = @"12323";
    [BTHTTPRequest registerWithParameters:reset success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
}

-(void)saveAddress{
 
    UserCommonAddresseeSaveRequest *address = [[UserCommonAddresseeSaveRequest alloc]init];
    
    AddresseeInfo *eeInfo = [[AddresseeInfo alloc]init];
    PhoneNumber *phone = [[PhoneNumber alloc]init];
    phone.phonePre = @"+86";
    phone.phone = @"18023008100";
    AddressInfo *info = [[AddressInfo alloc]init];
    info.countryCode = @"35345";
    info.provideCode = @"534534";
    info.cityCode = @"4545534";
    info.address = @"哈哈哈哈哈哈哈哈哈";
    
//    eeInfo.addresseeId = @"12312";
    eeInfo.address = info;
//    eeInfo.hasAddress = NO;
    eeInfo.consigneePhone =  phone;
//    eeInfo.hasConsigneePhone = NO;
    eeInfo.consigneeName = @"lisisi";
//    eeInfo.default_p = YES;
    
    address.addressee = eeInfo;
//    address.hasAddressee = NO;
    [BTHTTPRequest saveAddressWithParameters:address success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
}

-(void)getAddress{
    
    GetUserAddresseeListRequest *list = [[GetUserAddresseeListRequest alloc]init];
    PageDataRequest *page = [[PageDataRequest alloc]init];
    page.currentPage=1;
    page.pageSize = 10;
    list.req = page;
    [BTHTTPRequest getAddressWithParameters:list success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
    
}
-(void)deleteAddress{
    DeleteUserAddresseeRequest *detl = [[DeleteUserAddresseeRequest alloc]init];
    detl.addresseeId = @"0e606906-bfdd-41d7-80f6-5e0af5d1a675";
    [BTHTTPRequest deleteAddressWithParameters:detl success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
}

-(void)flight{
    SearchFlightInfoRequest *trip = [[SearchFlightInfoRequest alloc]init];  
    trip.keyword = @"666666";
    [BTHTTPRequest searchFlightWithParameters:trip success:^(id response) {

    } failure:^(NSError *error) {

    }];
    
}


-(void)sellTripTask{
    SellTripTaskRequest *sell = [[SellTripTaskRequest alloc]init];
    SellReleaseTripTask *rel = [[SellReleaseTripTask alloc]init];
    rel.consigneeName = @"ddddd";
    sell.taskInfo = rel;
    [BTHTTPRequest sellTripTaskWithParameters:sell success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
    
    
}



-(void)buytripTask{
    BuyTripTaskRequest *trip = [[BuyTripTaskRequest alloc]init];
    BuyTripTaskInfo *info = [[BuyTripTaskInfo alloc]init];
    info.buyTripTaskId = @"666666";
    trip.taskInfo = info;
    [BTHTTPRequest buyTripTaskWithParameters:trip success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
