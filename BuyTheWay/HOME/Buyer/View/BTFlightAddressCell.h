//
//  BTFlightAddressCell.h
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/23.
//  Copyright © 2018年 思. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BTFlightAddressCell : UITableViewCell
@property(nonatomic,strong)UIView *bgView;
@property(nonatomic,strong)UILabel *flightTitleLabel;
@property(nonatomic,strong)UITextField *flightTextField;
@property(nonatomic,strong)UIView *line0View;
@property(nonatomic,strong)UIView *line1View;
@property(nonatomic,strong)UILabel *starAddressLabel;
@property(nonatomic,strong)UILabel *endAddressLabel;
@property(nonatomic,strong)UIButton *starAddressBtn;
@property(nonatomic,strong)UIButton *endAddressBtn;
@property(nonatomic,strong)UILabel *starTimeLabel;
@property(nonatomic,strong)UILabel *endTimeLabel;
@property(nonatomic,strong)UIButton *starTimeBtn;
@property(nonatomic,strong)UIButton *endTimeBtn;
@property(nonatomic,strong)UIImageView *flightImage;
@end
