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
#import "BTFlightAddressCell.h"
#import "BTLuggageTableViewCell.h"
@interface BTBuyerViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)UIButton *nextBtn;
@end

@implementation BTBuyerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"发布行程";
    [self initView];
}

-(void)initView{
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
    self.tableView.backgroundColor = RGB(245, 245, 245);
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.rowHeight = 304/2 * SCALE_WIDTH;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.tableFooterView = [[UIView alloc]init];
    [self.tableView registerClass:[BTFlightAddressCell class] forCellReuseIdentifier:@"BTFlightAddressCell"];
    [self.tableView registerClass:[BTLuggageTableViewCell class] forCellReuseIdentifier:@"BTLuggageTableViewCell"];
    [self.view addSubview:self.tableView];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0){
        BTFlightAddressCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"BTFlightAddressCell" forIndexPath:indexPath];
        
        return cell;
    }else{
        BTLuggageTableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"BTLuggageTableViewCell" forIndexPath:indexPath];
        
        return cell;
    }
   
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        return 304/2 * SCALE_WIDTH;
    }else{
         return 327 * SCALE_WIDTH;
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//- (IBAction)nextBtn:(id)sender {
//
//    SpaceInfo *sp = [[SpaceInfo alloc]init];
//    sp.spaceWidth = [self.wideText.text intValue];// 33;
//    sp.spaceHeight = [self.highText.text intValue];// 44;
//    sp.spaceLength = [self.longText.text intValue];
//    sp.spaceWeight = [self.weightText.text intValue];
//    BTBuyerSendViewController *vc = [[BTBuyerSendViewController alloc]init];
//    vc.sp = sp;
//    [self.navigationController pushViewController:vc animated:YES];
//
//}


@end
