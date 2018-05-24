//
//  BTFlightAddressCell.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/23.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTFlightAddressCell.h"

@implementation BTFlightAddressCell



- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self =  [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initView];
    }
    
    return  self;
}

-(void)initView{
    WeakSelf(self);
    self.backgroundColor = RGB(245, 245, 245);
    self.bgView = [[UIView alloc] init];
    self.bgView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1/1.0];
    [self.contentView addSubview:self.bgView];
    self.bgView.sd_layout.topSpaceToViewScale(self.contentView, 5)
    .leftSpaceToViewScale(self.contentView, 15)
    .bottomSpaceToViewScale(self.contentView,5)
    .rightSpaceToViewScale(self.contentView, 15);
    self.bgView.layer.masksToBounds = YES;
    self.bgView.layer.cornerRadius = 10;
    self.flightTitleLabel = [[UILabel alloc] init];
    self.flightTitleLabel.text = @"航班号";
    self.flightTitleLabel.font = [UIFont fontWithTheSizeScale:13];// [UIFont fontWithName:@"PingFangSC-Regular" size:26];
    self.flightTitleLabel.textColor = [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1/1.0];
    [self.bgView addSubview:self.flightTitleLabel];
    self.flightTitleLabel.sd_layout
    .leftSpaceToViewScale(self.bgView, 10).widthIsScale(60).heightIsScale(19).topSpaceToViewScale(self.bgView, 38/2);
    self.flightTextField = [[UITextField alloc]init];
    self.flightTextField.placeholder = @"请输入航班号";
    self.flightTextField.textColor = RGB(51, 51, 51);
    self.flightTextField.font = [UIFont fontWithTheSizeScale:18];
    [self.bgView addSubview:self.flightTextField];
    self.flightTextField.sd_layout.leftSpaceToViewScale(self.flightTitleLabel, 0).rightSpaceToViewScale(self.bgView, 15). heightIsScale(26).centerYEqualToView(self.flightTitleLabel);
    self.line0View = [[UIView alloc]init];
    self.line0View.backgroundColor = RGB(230, 230, 230);
    [self.bgView addSubview:self.line0View];
    self.line0View.sd_layout.topSpaceToViewScale(self.flightTextField, 5).leftSpaceToViewScale(self.bgView, 5).rightSpaceToViewScale(self.bgView, 5).heightIsScale(1);
//    ////////////////////
    self.starAddressLabel = [[UILabel alloc] init];
    self.starAddressLabel.text = @"出发地";
    self.starAddressLabel.font = [UIFont fontWithTheSizeScale:13];// [UIFont fontWithName:@"PingFangSC-Regular" size:26];
    self.starAddressLabel.textColor = [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1/1.0];
    [self.bgView addSubview:self.starAddressLabel];
    self.starAddressLabel.sd_layout
    .leftSpaceToViewScale(self.bgView, 10).widthIsScale(60).heightIsScale(19).topSpaceToViewScale(self.line0View, 16);
    
    self.flightImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"flight"]];
    self.flightImage.contentMode = UIViewContentModeScaleAspectFit;
    [self.bgView addSubview:self.flightImage];
    self.flightImage.sd_layout.rightSpaceToViewScale(self.bgView, -10).topSpaceToViewScale(self.bgView, 20).bottomSpaceToView(self.bgView, 0).widthIs((SCREEN_WIDTH-30-50)/2);
    self.starAddressBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.starAddressBtn  setTitleColor:RGB(51, 51, 51) forState:0];
    [self.starAddressBtn  setTitle:@"上海" forState:0];
    self.starAddressBtn .contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    self.starAddressBtn.titleLabel.font = [UIFont fontWithTheSizeScale:18];
    [self.bgView addSubview:self.starAddressBtn ];
    self.starAddressBtn.sd_layout.leftSpaceToViewScale(self.starAddressLabel, 0).rightSpaceToViewScale(self.flightImage, 30). heightIsScale(30).centerYEqualToView(self.starAddressLabel);
    
    self.endAddressLabel = [[UILabel alloc] init];
    self.endAddressLabel.text = @"目的地";
    self.endAddressLabel.font = [UIFont fontWithTheSizeScale:13];// [UIFont fontWithName:@"PingFangSC-Regular" size:26];
    self.endAddressLabel.textColor = [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1/1.0];
    [self.bgView addSubview:self.endAddressLabel];
    self.endAddressLabel.sd_layout
    .leftSpaceToViewScale(self.starAddressBtn, 10).widthIsScale(50).heightIsScale(19).topSpaceToViewScale(self.line0View, 16);
    
    self.endAddressBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.endAddressBtn  setTitleColor:RGB(51, 51, 51) forState:0];
    [self.endAddressBtn  setTitle:@"上海" forState:0];
    self.endAddressBtn .contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    self.endAddressBtn.titleLabel.font = [UIFont fontWithTheSizeScale:18];
    [self.bgView addSubview:self.endAddressBtn ];
    self.endAddressBtn.sd_layout.leftSpaceToViewScale(self.endAddressLabel, 0).rightSpaceToViewScale(self.bgView, 10). heightIsScale(30).centerYEqualToView(self.endAddressLabel);
    
    self.line1View = [[UIView alloc]init];
    self.line1View.backgroundColor = RGB(230, 230, 230);
    [self.bgView addSubview:self.line1View];
    self.line1View.sd_layout.topSpaceToViewScale(self.starAddressBtn, 5).leftSpaceToViewScale(self.bgView, 5).rightSpaceToViewScale(self.bgView, 5).heightIsScale(1);

   
    self.starTimeLabel = [[UILabel alloc] init];
    self.starTimeLabel.text = @"出发时间";
    self.starTimeLabel.font = [UIFont fontWithTheSizeScale:13];// [UIFont fontWithName:@"PingFangSC-Regular" size:26];
    self.starTimeLabel.textColor = [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1/1.0];
    [self.bgView addSubview:self.starTimeLabel];
    self.starTimeLabel.sd_layout
    .leftSpaceToViewScale(self.bgView, 10).widthIsScale(60).heightIsScale(19).topSpaceToViewScale(self.line1View, 16);
    
    self.starTimeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.starTimeBtn  setTitleColor:RGB(51, 51, 51) forState:0];
    [self.starTimeBtn  setTitle:@"10-3 12:22" forState:0];
    self.starTimeBtn .contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    self.starTimeBtn.titleLabel.font = [UIFont fontWithTheSizeScale:18];
    [self.bgView addSubview:self.starTimeBtn ];
    self.starTimeBtn.sd_layout.leftSpaceToViewScale(self.starTimeLabel, 0).rightSpaceToViewScale(self.endAddressLabel, 20). heightIsScale(30).centerYEqualToView(self.starTimeLabel);
    
    self.endTimeLabel = [[UILabel alloc] init];
    self.endTimeLabel.text = @"到达时间";
    self.endTimeLabel.font = [UIFont fontWithTheSizeScale:13];// [UIFont fontWithName:@"PingFangSC-Regular" size:26];
    self.endTimeLabel.textColor = [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1/1.0];
    [self.bgView addSubview:self.endTimeLabel];
    self.endTimeLabel.sd_layout
    .leftSpaceToViewScale(self.starTimeBtn, 20).widthIsScale(60).heightIsScale(19).topSpaceToViewScale(self.line1View, 16);
    
    self.endTimeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.endTimeBtn  setTitleColor:RGB(51, 51, 51) forState:0];
    [self.endTimeBtn  setTitle:@"0-3 12:22" forState:0];
    self.endTimeBtn .contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    self.endTimeBtn.titleLabel.font = [UIFont fontWithTheSizeScale:18];
    [self.bgView addSubview:self.endTimeBtn ];
    self.endTimeBtn.sd_layout.leftSpaceToViewScale(self.endTimeLabel, 0).rightSpaceToViewScale(self.bgView, 10). heightIsScale(30).centerYEqualToView(self.endTimeLabel);
    
    
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
