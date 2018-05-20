//
//  BTBuyerSendViewController.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/20.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTBuyerSendViewController.h"

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
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
