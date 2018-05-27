//
//  BTBuyerSendViewController.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/20.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTBuyerSendViewController.h"
#import "BTHTTPRequest.h"
#import "BTTransferTableViewCell.h"
@interface BTBuyerSendViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)UIButton *backBtn;
@property(nonatomic,strong)UIButton *affirmBtn;
@end

@implementation BTBuyerSendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"填写交接信息";
    [self initView];
}

-(void)initView{
    self.view.backgroundColor = RGB(245, 245, 245);
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectZero];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = RGB(245, 245, 245);
    self.tableView.tableFooterView = [[UIView alloc]init];
    [self.tableView registerClass:[BTTransferTableViewCell class] forCellReuseIdentifier:@"BTTransferTableViewCell"];
    [self.view addSubview:self.tableView];
    self.tableView.sd_layout.topSpaceToViewScale(self.view, 0).rightSpaceToViewScale(self.view, 0).leftSpaceToViewScale(self.view, 0).bottomSpaceToViewScale(self.view, 45);
    self.backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.backBtn setTitle:@"上一步" forState:0];
    self.backBtn.titleLabel.font = [UIFont fontWithTheSizeScale:18];
    [self.backBtn setTitleColor:coloNav forState:0];
    self.backBtn.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.backBtn];
    self.backBtn.sd_layout.widthIs(SCREEN_WIDTH/2).topSpaceToViewScale(self.tableView, 0).leftSpaceToViewScale(self.view, 0).bottomSpaceToViewScale(self.view, 0);
    self.affirmBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.affirmBtn setTitle:@"确认发布" forState:0];
    self.affirmBtn.titleLabel.font = [UIFont fontWithTheSizeScale:18];
    [self.affirmBtn setTitleColor:[UIColor whiteColor] forState:0];
    self.affirmBtn.backgroundColor = coloNav;
    [self.view addSubview:self.affirmBtn];
    self.affirmBtn.sd_layout.widthIs(SCREEN_WIDTH/2).topSpaceToViewScale(self.tableView, 0).rightSpaceToViewScale(self.view, 0).bottomSpaceToViewScale(self.view, 0);
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BTTransferTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BTTransferTableViewCell" forIndexPath:indexPath];
    
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return  350;
    }else{
        return 120;
    } 
}


//- (void)nextBtn:(UIButton *)sender {
//    BuyTripTaskInfo *info = [[BuyTripTaskInfo alloc]init];
//    info.buySpace = self.sp;
//    ////寄件人
//    AddresseeInfo *addresseeInfo = [[AddresseeInfo alloc]init];
//    addresseeInfo.consigneeName = self.buyerNameTextField.text;
//    AddressInfo *addressinfo = [[AddressInfo alloc]init];
//    addressinfo.cityCode = @"432";
//    addressinfo.provideCode = @"432";
//    addressinfo.countryCode = @"22";
//    addresseeInfo.address = addressinfo;
//    PhoneNumber *phone = [[PhoneNumber alloc]init];
//    phone.phone = self.receiptPhoneTextField.text;
//    phone.phonePre = @"+86";
//    addresseeInfo.consigneePhone = phone;
//    addresseeInfo.consigneeName = self.buyerNameTextField.text;
//    info.startAddresseeInfo = addresseeInfo;
//
//    ///收件人
//    AddresseeInfo *endAddresseeInfo = [[AddresseeInfo alloc]init];
//    endAddresseeInfo.consigneeName = self.buyerNameTextField.text;
//    AddressInfo *addressinfo2 = [[AddressInfo alloc]init];
//    addressinfo2.cityCode = @"432";
//    addressinfo2.provideCode = @"432";
//    addressinfo2.countryCode = @"22";
//    addresseeInfo.address = addressinfo;
//    PhoneNumber *phone2 = [[PhoneNumber alloc]init];
//    phone2.phone = self.receiptPhoneTextField.text;
//    phone2.phonePre = @"+86";
//    endAddresseeInfo.consigneePhone = phone;
//    endAddresseeInfo.consigneeName = self.buyerNameTextField.text;
//    info.endAddressInfo = endAddresseeInfo;
//    info.deadLineTime = [[NSDate date] timeIntervalSince1970];
//
//    [BTHTTPRequest buyTripTaskWithParameters:info success:^(id response) {
//
//    } failure:^(NSError *error) {
//
//    }];
//
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
