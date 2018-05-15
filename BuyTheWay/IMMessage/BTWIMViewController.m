//
//  BTWIMViewController.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/8.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTWIMViewController.h"
#import "Buy.pbobjc.h"
#import "BTHTTPRequest.h"
@interface BTWIMViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSMutableArray *dataArray;
@end

@implementation BTWIMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = [NSMutableArray array];
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.rowHeight = 45;
    [self.view addSubview:self.tableView];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return  1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    BuyTripTaskInfo *info = self.dataArray[indexPath.row];
    cell.textLabel.text = info.buyTripTaskId; 
    return cell;
    
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    WeakSelf(self)
    PageDataRequest *page = [[PageDataRequest alloc]init];
    page.pageSize = 10 ;
    page.currentPage = 1;
    [BTHTTPRequest  getBuyTripTaskListWithParameters:page success:^(id response) {
        GetBuyTripTaskListResponse *buyL =  response;
        [weakself.dataArray removeAllObjects];
        [weakself.dataArray addObjectsFromArray:buyL.taskListArray];
        [weakself.tableView reloadData];
    } failure:^(NSError *error) {
        
    }];
    
}

-(void)getReqe{
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
