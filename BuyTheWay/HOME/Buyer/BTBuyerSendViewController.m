//
//  BTBuyerSendViewController.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/20.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTBuyerSendViewController.h"
#import "BTHTTPRequest.h"
@interface BTBuyerSendViewController ()
@property (weak, nonatomic) IBOutlet UITextField *buyerNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *sendAddressTextField;
@property (weak, nonatomic) IBOutlet UITextField *sendAddressPhoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *receiptNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *receiptAddressTextField;
@property (weak, nonatomic) IBOutlet UITextField *receiptPhoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *arriveTimeTextField;

@end

@implementation BTBuyerSendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"填写交接信息";
    
}
- (IBAction)nextBtn:(UIButton *)sender { 
    BuyTripTaskInfo *info = [[BuyTripTaskInfo alloc]init];
    info.buySpace = self.sp;
    ////寄件人
    AddresseeInfo *addresseeInfo = [[AddresseeInfo alloc]init];
    addresseeInfo.consigneeName = self.buyerNameTextField.text;
    AddressInfo *addressinfo = [[AddressInfo alloc]init];
    addressinfo.cityCode = @"432";
    addressinfo.provideCode = @"432";
    addressinfo.countryCode = @"22";
    addresseeInfo.address = addressinfo;
    PhoneNumber *phone = [[PhoneNumber alloc]init];
    phone.phone = self.receiptPhoneTextField.text;
    phone.phonePre = @"+86";
    addresseeInfo.consigneePhone = phone;
    addresseeInfo.consigneeName = self.buyerNameTextField.text;
    info.startAddresseeInfo = addresseeInfo;
    
    ///收件人
    AddresseeInfo *endAddresseeInfo = [[AddresseeInfo alloc]init];
    endAddresseeInfo.consigneeName = self.buyerNameTextField.text;
    AddressInfo *addressinfo2 = [[AddressInfo alloc]init];
    addressinfo2.cityCode = @"432";
    addressinfo2.provideCode = @"432";
    addressinfo2.countryCode = @"22";
    addresseeInfo.address = addressinfo;
    PhoneNumber *phone2 = [[PhoneNumber alloc]init];
    phone2.phone = self.receiptPhoneTextField.text;
    phone2.phonePre = @"+86";
    endAddresseeInfo.consigneePhone = phone;
    endAddresseeInfo.consigneeName = self.buyerNameTextField.text;
    info.endAddressInfo = endAddresseeInfo;
    info.deadLineTime = [[NSDate date] timeIntervalSince1970];
    
    [BTHTTPRequest buyTripTaskWithParameters:info success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
