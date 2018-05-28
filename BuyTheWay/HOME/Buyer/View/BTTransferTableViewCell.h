//
//  BTTransferTableViewCell.h
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/26.
//  Copyright © 2018年 思. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BTInfomationView.h"
@interface BTTransferTableViewCell : UITableViewCell
@property(nonatomic,strong)UIView *bgView;
@property(nonatomic,strong)UIImageView *titleImge;
@property(nonatomic,strong)UILabel *titleLabel;
@property(nonatomic,strong)UILabel *detailLable;
@property(nonatomic,strong)UIView *lineView;
@property(nonatomic,strong)BTInfomationView *peopleView;
@property(nonatomic,strong)BTInfomationView *regionView;
@property(nonatomic,strong)BTInfomationView *addressView;
@property(nonatomic,strong)BTInfomationView *phoneView;
@property(nonatomic,strong)UIImageView *emailImage;
@property(nonatomic,copy)NSString *isInfo;

@end
