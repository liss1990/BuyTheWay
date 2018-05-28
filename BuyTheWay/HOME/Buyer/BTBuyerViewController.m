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
#import "BTBuyerSendViewController.h"

@interface BTBuyerViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)UIButton *nextBtn;
@property(nonatomic,assign)BOOL xinliBool;
@property(nonatomic,assign)BOOL suishen;
@property(nonatomic,strong)UIDatePicker *datePer;
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
    self.nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.nextBtn setTitle:@"下一步" forState:0];
    [self.nextBtn addTarget:self action:@selector(tapNestBtn) forControlEvents:1<<6];
    [self.view addSubview:self.nextBtn];
    [self.nextBtn setTitleColor:[UIColor whiteColor] forState:0];
    self.nextBtn.backgroundColor = coloNav;
    self.nextBtn.sd_layout.heightIsScale(45).leftSpaceToView(self.view, 0).rightSpaceToView(self.view, 0).bottomSpaceToView(self.view, 0);
    self.tableView.sd_layout.topSpaceToViewScale(self.view, 0).rightSpaceToView(self.view, 0).leftSpaceToView(self.view, 0).bottomSpaceToView(self.nextBtn, 0);
//    self.xinliBool = YES;
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"eeee");
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0){
        BTFlightAddressCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"BTFlightAddressCell" forIndexPath:indexPath];
        
        return cell;
    }else{
        BTLuggageTableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"BTLuggageTableViewCell" forIndexPath:indexPath];
        if (indexPath.section == 1) {
            cell.titleLbael.text = @"闲置的行李箱空间";
        } else {
            cell.titleLbael.text = @"闲置的随身携带行李空间";
        }
        cell.selectBtn.tag = indexPath.section;
        WeakSelf(self)
        cell.selectBlock = ^(BOOL isSelect, NSInteger tag) {
            if (tag == 1) {
                weakself.xinliBool = isSelect;
            } else {
                weakself.suishen = isSelect;
            } 
            [weakself.tableView reloadData];
        };
        return cell;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        return 304/2 * SCALE_WIDTH;
    }else if (indexPath.section == 1){
        if (self.xinliBool == YES) {
             return 370 * SCALE_WIDTH;
        } else {
            return 70 * SCALE_WIDTH ;
        }
        
    }else{
        if (self.suishen == YES) {
            return 370 * SCALE_WIDTH;
        } else {
            return 70 * SCALE_WIDTH ;
        }
    }
    
}
-(void)tapNestBtn{
    BTBuyerSendViewController *vc = [[BTBuyerSendViewController alloc]init]; 
    [self.navigationController pushViewController:vc animated:YES];
    
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
