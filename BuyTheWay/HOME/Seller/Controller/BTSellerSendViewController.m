//
//  BTSellerSendViewController.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/17.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTSellerSendViewController.h"
#import "Sell.pbobjc.h"
#import "BTHTTPRequest.h"
#import "Business.pbobjc.h"
@interface BTSellerSendViewController ()
@property (weak, nonatomic) IBOutlet UITextField *time;
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *address;
@property (weak, nonatomic) IBOutlet UITextField *phone;

@end

@implementation BTSellerSendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    
}
- (IBAction)saveBtn:(id)sender {
    SellTripTaskRequest *sell = [[SellTripTaskRequest alloc]init];
  
//    CityInfo *city = [[CityInfo alloc]init];
//    city.cityCode = @"234234";
//    city.provideCode = @"2342";
//    city.countryCode = @"323";
    
    AddressInfo *address = [[AddressInfo alloc]init];
    address.provideCode = @"3423";
    address.cityCode = @"3234";
    address.countryCode = @"34234";
    address.address = self.address.text;// @"深圳xxxxxxx";
    
    PhoneNumber *phone = [[PhoneNumber alloc]init];
    phone.phonePre = @"+86";
    phone.phone = self.phone.text;
    
    SellReleaseTripTask *rel = [[SellReleaseTripTask alloc]init];
    rel.consigneeName = self.name.text;// @"ddddd";
    rel.consignSpace =self.consignSpace;
    rel.flightInfo = self.flightInfo;
    rel.handbagSpace = self.handbagSpace;
    rel.address = address;
    rel.deadLineTime = [[NSDate date] timeIntervalSince1970];// 2323423423;
    rel.createTime = [[NSDate date] timeIntervalSince1970];// 34234234;
    rel.consigneePhone = phone;
    sell.taskInfo = rel;
    
    [BTHTTPRequest sellTripTaskWithParameters:sell success:^(id response) {

    } failure:^(NSError *error) {

    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
