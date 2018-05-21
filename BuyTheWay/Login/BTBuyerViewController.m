//
//  BTBuyerViewController.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/18.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTBuyerViewController.h"
#import "Business.pbobjc.h"
#import "BTBuyerSendViewController.h"
@interface BTBuyerViewController ()
@property (weak, nonatomic) IBOutlet UITextField *weightText;
@property (weak, nonatomic) IBOutlet UITextField *longText;
@property (weak, nonatomic) IBOutlet UITextField *wideText;
@property (weak, nonatomic) IBOutlet UITextField *highText;

@end

@implementation BTBuyerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"买家发布信息";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)nextBtn:(id)sender {
    
    SpaceInfo *sp = [[SpaceInfo alloc]init];
    sp.spaceWidth = [self.wideText.text intValue];// 33;
    sp.spaceHeight = [self.highText.text intValue];// 44;
    sp.spaceLength = [self.longText.text intValue];
    sp.spaceWeight = [self.weightText.text intValue];
    BTBuyerSendViewController *vc = [[BTBuyerSendViewController alloc]init];
    vc.sp = sp;
    [self.navigationController pushViewController:vc animated:YES];
    
}


@end
