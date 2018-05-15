//
//  BTWVillageViewController.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/8.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTWVillageViewController.h"
#import <UMShare/UMShare.h>
#import <TwitterKit/TwitterKit.h>
#import "BTHTTPRequest.h"
#import "Buy.pbobjc.h"
#import "Business.pbobjc.h"
@interface BTWVillageViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UIButton *faceBookBtn;
@property(nonatomic,strong)UIButton *twrrBtn;
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSMutableArray *dataArray;
@end

@implementation BTWVillageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    self.faceBookBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.faceBookBtn setTitle:@"faceBookLogin" forState:0];
    self.faceBookBtn.backgroundColor = [UIColor redColor];
    self.faceBookBtn.frame = CGRectMake(10, 80, 120, 50);
    [self.faceBookBtn addTarget:self action:@selector(clickFaceBookBtn) forControlEvents:1<<6];
    [self.view addSubview:self.faceBookBtn];
    
    self.twrrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.twrrBtn setTitle:@"Twitter" forState:0];
    self.twrrBtn.backgroundColor = [UIColor redColor];
    self.twrrBtn.frame = CGRectMake(10, 80+60, 120, 50);
    [self.twrrBtn addTarget:self action:@selector(clicktwrrBtn) forControlEvents:1<<6];
    [self.view addSubview:self.twrrBtn];
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.twrrBtn.frame), SCREEN_WIDTH, 300) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.rowHeight = 45;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:self.tableView];
    self.dataArray = [NSMutableArray array];
}



-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  self.dataArray.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    SellTripTask *sell = self.dataArray[indexPath.row];
    cell.textLabel.text = sell.startAddress.address;
    return cell; 
}

-(void)buyMarrySellRequest{
    WeakSelf(self)
    [BTHTTPRequest marrySellTripTaskLisWithParameters:@"" success:^(id response) {
        [weakself.dataArray removeAllObjects];
        MarrySellTripTaskListResponse *data = response;
        [weakself.dataArray addObjectsFromArray:data.marrySellTripTaskArray];
        [weakself.tableView reloadData];
    } failure:^(NSError *error) {
    }];
    
    
}

-(void)clicktwrrBtn{
    
//    [self getUserInfoForPlatform:UMSocialPlatformType_Twitter];
    [[Twitter sharedInstance] logInWithCompletion:^(TWTRSession * _Nullable session, NSError * _Nullable error) {
        if(session){
            NSLog(@"%@已登录",session.userName);
            [self loadTwitterUserWithID:session.userID];
        }  else  {
            NSLog(@"error:%@",error.localizedDescription);
        }
    }];
}
//获取Twitter用户信息
- (void)loadTwitterUserWithID:(NSString *)userId{
    
    TWTRAPIClient *client = [TWTRAPIClient clientWithCurrentUser];
    [client loadUserWithID:userId completion:^(TWTRUser * _Nullable user, NSError * _Nullable error) {
        if (user) {
            NSLog(@"头像url:%@",user.profileImageURL);
        }else{
            NSLog(@"error:%@",error.localizedDescription);
        }
    }];
}
-(void)clickFaceBookBtn{
    
    [self getUserInfoForPlatform:UMSocialPlatformType_Facebook];
}
/**
 调用第三方登录
 */
- (void)getUserInfoForPlatform:(UMSocialPlatformType)platformType
{
    [[UMSocialManager defaultManager] getUserInfoWithPlatform:platformType currentViewController:self completion:^(id result, NSError *error) {
        UMSocialUserInfoResponse *resp = result;
        // 第三方登录数据(为空表示平台未提供)
        // 授权数据
        if (resp.uid.length == 0){
            [SVProgressHUD showErrorWithStatus:@"登录失败"];
            return ;
        }
        NSLog(@" uid: %@", resp.uid);
        NSLog(@" openid: %@", resp.openid);
        NSLog(@" accessToken: %@", resp.accessToken);
        NSLog(@" refreshToken: %@", resp.refreshToken);
        NSLog(@" expiration: %@", resp.expiration);
        // 用户数据
        NSLog(@" name: %@", resp.name);
        NSLog(@" iconurl: %@", resp.iconurl);
        NSLog(@" gender: %@", resp.unionGender);
        // 第三方平台SDK原始数据
        NSLog(@" originalResponse: %@", resp.originalResponse);
        NSString *login_type = @"";
        switch (platformType) {
            case UMSocialPlatformType_GooglePlus:
                login_type=@"google";
                break;
            case UMSocialPlatformType_Facebook:
                login_type=@"facebook";
                break;
            default:
                break;
        }
 
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
