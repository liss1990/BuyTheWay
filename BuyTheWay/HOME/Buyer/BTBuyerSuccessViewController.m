//
//  BTBuyerSuccessViewController.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/28.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTBuyerSuccessViewController.h"

@interface BTBuyerSuccessViewController ()
@property (weak, nonatomic) IBOutlet UIButton *knowBtn;

@end

@implementation BTBuyerSuccessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"行程发布成功";
    self.knowBtn.layer.cornerRadius = 5;
    self.knowBtn.layer.borderColor = RGB(38,166,154).CGColor;
    self.knowBtn.layer.borderWidth =1;
    
}
- (IBAction)clickTap:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
