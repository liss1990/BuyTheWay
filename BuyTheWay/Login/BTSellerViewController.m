//
//  BTSellerViewController.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/17.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTSellerViewController.h"
#import "BTHTTPRequest.h"
#import "Sell.pbobjc.h"
#import "Business.pbobjc.h"
#import "BTSellerSendViewController.h"
@interface BTSellerViewController ()
@property (weak, nonatomic) IBOutlet UITextField *fileCodeTextfiel;
@property (weak, nonatomic) IBOutlet UITextField *beginAddressTextField;
@property (weak, nonatomic) IBOutlet UITextField *endAddressTextField;
@property (weak, nonatomic) IBOutlet UITextField *beginTimeTextfield;
@property (weak, nonatomic) IBOutlet UITextField *endTimeTextfield;
@property (weak, nonatomic) IBOutlet UITextField *weightTextfield;
@property (weak, nonatomic) IBOutlet UITextField *volumeLongTextField;
@property (weak, nonatomic) IBOutlet UITextField *volumeWideTextField;
@property (weak, nonatomic) IBOutlet UITextField *volumehighTextField;
@property (weak, nonatomic) IBOutlet UITextField *portableWeightTextField;
@property (weak, nonatomic) IBOutlet UITextField *portableLongTextField;
@property (weak, nonatomic) IBOutlet UITextField *portableWideTextField;
@property (weak, nonatomic) IBOutlet UITextField *portablehighTextField;

@end

@implementation BTSellerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
- (IBAction)nextBtn:(id)sender {
    FlightInfo *flightinfo = [[FlightInfo alloc]init];
    CityInfo *city = [[CityInfo alloc]init];
    city.cityCode = @"234234";
    city.provideCode = @"2342";
    city.countryCode = @"323";
    flightinfo.flightInfoNo = self.fileCodeTextfiel.text;
    flightinfo.startCityInfo = city;
    flightinfo.endCityInfo = city;
    SpaceInfo *consignSpace = [[SpaceInfo alloc]init];
    consignSpace.spaceWidth = [self.volumeWideTextField.text intValue];
    consignSpace.spaceHeight = [self.volumehighTextField.text intValue];
    consignSpace.spaceLength = [self.volumeLongTextField.text intValue];
    consignSpace.spaceWeight = [self.weightTextfield.text intValue];
    
    SpaceInfo *handbagSpace = [[SpaceInfo alloc]init];
    handbagSpace.spaceWidth = [self.portableWeightTextField.text intValue];
    handbagSpace.spaceHeight = [self.portablehighTextField.text intValue];
    handbagSpace.spaceLength = [self.portableLongTextField.text intValue];
    handbagSpace.spaceWeight = [self.portableWeightTextField.text intValue];

    BTSellerSendViewController *senderVC = [[BTSellerSendViewController alloc]init];
    senderVC.flightInfo = flightinfo;
    senderVC.consignSpace = consignSpace;
    senderVC.handbagSpace = handbagSpace;
    [self.navigationController pushViewController:senderVC animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
