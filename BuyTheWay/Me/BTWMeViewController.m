//
//  BTWMeViewController.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/8.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTWMeViewController.h"
#import "BTHTTPRequest.h"
#import "Sell.pbobjc.h"
#import "Common.pbobjc.h"
#import "Business.pbobjc.h"
@interface BTWMeViewController ()
@property(nonatomic,strong)UIButton *sellReplyTripTask;
@property(nonatomic,strong)UIButton *sellGetTripTaskList;

@property(nonatomic,strong)UIButton *sellGetOrderList; 

@end

@implementation BTWMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sellReplyTripTask = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.sellReplyTripTask setTitle:@"sellReplyTripTask" forState:0];
    self.sellReplyTripTask.backgroundColor = [UIColor redColor];
    self.sellReplyTripTask.frame = CGRectMake(10, 80+40, SCREEN_WIDTH, 30);
    [self.sellReplyTripTask addTarget:self action:@selector(sellReplyTripTaskTap) forControlEvents:1<<6];
    [self.view addSubview:self.sellReplyTripTask];

    self.sellGetTripTaskList = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.sellGetTripTaskList setTitle:@"sellGetTripTaskList" forState:0];
    self.sellGetTripTaskList.backgroundColor = [UIColor redColor];
    self.sellGetTripTaskList.frame = CGRectMake(10, 80+40+40, SCREEN_WIDTH, 30);
    [self.sellGetTripTaskList addTarget:self action:@selector(sellGetTripTaskListTap) forControlEvents:1<<6];
    [self.view addSubview:self.sellGetTripTaskList];

    self.sellGetOrderList = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.sellGetOrderList setTitle:@"sellGetOrderList" forState:0];
    self.sellGetOrderList.backgroundColor = [UIColor redColor];
    self.sellGetOrderList.frame = CGRectMake(10, 80+40+40+40, SCREEN_WIDTH, 30);
    [self.sellGetOrderList addTarget:self action:@selector(sellGetOrderListTap) forControlEvents:1<<6];
    [self.view addSubview:self.sellGetOrderList];


}

-(void)sellReplyTripTaskTap{
    
    SellReplyTripTaskRequest *reply = [[SellReplyTripTaskRequest alloc]init];
    reply.orderId = @"222";
    reply.answer = true;
    reply.mes = 2;
    
    [BTHTTPRequest sellReplyTripTaskWithParameters:reply success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
}

-(void)sellGetTripTaskListTap{
    
    PageDataRequest *req = [[PageDataRequest alloc]init];
    req.currentPage = 1;
    req.pageSize = 10;
    
    [BTHTTPRequest sellGetTripTaskListWithParameters:req success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
}


-(void)sellGetOrderListTap{
    
    GetSellOrderListRequest *sellorde = [[GetSellOrderListRequest alloc]init];
    sellorde.orderStutus = 1;
    
    PageDataRequest *req = [[PageDataRequest alloc]init];
    req.currentPage = 1;
    req.pageSize = 10;
    sellorde.req =req;
    [BTHTTPRequest  sellGetOrderListWithParameters:sellorde success:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
