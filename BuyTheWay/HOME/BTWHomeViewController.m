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
@property(nonatomic,strong)UIButton * selltriptask; // 想购买的行程服务;
@property(nonatomic,strong)UIButton * buyerTask;////买家发布信息

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
    
    self.selltriptask = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.selltriptask setTitle:@"卖家发布行程" forState:0];
    self.selltriptask.backgroundColor = [UIColor redColor];
    self.selltriptask.frame = CGRectMake(10, 80+ 60+60+60+60+60+60, 120, 50);
    [self.selltriptask addTarget:self action:@selector(sellTripTask) forControlEvents:1<<6];
    [self.view addSubview:self.selltriptask];
    
    self.buyerTask = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.buyerTask setTitle:@"买家发布信息" forState:0];
    self.buyerTask.backgroundColor = [UIColor redColor];
    self.buyerTask.frame = CGRectMake(10+130, 80+ 60+60+60+60+60+60, 120, 50);
    [self.buyerTask addTarget:self action:@selector(buytripTask) forControlEvents:1<<6];
    [self.view addSubview:self.buyerTask];
    
}

-(void)smg{
 
    
}

-(void)registerbtn{
    

    
}
-(void)login{
  
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
//    /** 航班信息 */

    /** space的长  宽 高 等 单位为cm */
//    @property(nonatomic, readwrite) int32_t spaceLength;
//
//    /** 单位为cm */
//    @property(nonatomic, readwrite) int32_t spaceWidth;
//
//    /** 单位为cm */
//    @property(nonatomic, readwrite) int32_t spaceHeight;
//
//    /** 手提包可以携带的重量（单位克）  保持用户输入，后台转换 */
//    @property(nonatomic, readwrite) int32_t spaceWeight;
//    /** 可以托运的space */
//    @property(nonatomic, readwrite, strong, null_resettable) SpaceInfo *consignSpace;
//    /** 手提包的space */
//    @property(nonatomic, readwrite, strong, null_resettable) SpaceInfo *handbagSpace;
//    /** 卖家要求的最迟的货物交付时间，买家必须将货物在此时间交付给卖家，一般是航程开始时多少小时 */
//    @property(nonatomic, readwrite) int64_t deadLineTime;
//    /** 买家所属地址 */
//    @property(nonatomic, readwrite, strong, null_resettable) AddressInfo *address;
//    /** 收货人用户电话 */
//    @property(nonatomic, readwrite, strong, null_resettable) PhoneNumber *consigneePhone;
//    /** 收货人姓名 */
//    @property(nonatomic, readwrite, copy, null_resettable) NSString *consigneeName;
//
//    /** 发布时间，主要是为了在查询时使用 */
//    @property(nonatomic, readwrite) int64_t createTime;
    SellTripTaskRequest *sell = [[SellTripTaskRequest alloc]init];
    FlightInfo *flightinfo = [[FlightInfo alloc]init];
    CityInfo *city = [[CityInfo alloc]init];
    city.cityCode = @"234234";
    city.provideCode = @"2342";
    city.countryCode = @"323";
    flightinfo.startCityInfo = city;
    flightinfo.endCityInfo = city;
    SpaceInfo *spac = [[SpaceInfo alloc]init];
    spac.spaceWidth = 33;
    spac.spaceHeight = 22;
    spac.spaceLength = 100;
    spac.spaceWeight = 100;
    
    AddressInfo *address = [[AddressInfo alloc]init];
    address.provideCode = @"3423";
    address.cityCode = @"3234";
    address.countryCode = @"34234";
    address.address = @"4534drgdfgdfsgsdfg";
    
    PhoneNumber *phone = [[PhoneNumber alloc]init];
    phone.phonePre = @"+86";
    phone.phone = @"1840398409";
    
    SellReleaseTripTask *rel = [[SellReleaseTripTask alloc]init];
    rel.consigneeName = @"ddddd";
    rel.consignSpace = spac;
    rel.flightInfo = flightinfo;
    rel.handbagSpace = spac;
    rel.address = address;
    rel.deadLineTime = 2323423423;
    rel.createTime = 34234234;
    rel.consigneePhone = phone;
    
    sell.taskInfo = rel;
    [BTHTTPRequest sellTripTaskWithParameters:sell success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
    
    
}

-(void)buytripTask{
    BuyTripTaskInfo *info = [[BuyTripTaskInfo alloc]init];
    SpaceInfo *sp = [[SpaceInfo alloc]init];
    sp.spaceWidth = 33;
    sp.spaceHeight = 44;
    info.buySpace = sp;
    [BTHTTPRequest buyTripTaskWithParameters:info success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
