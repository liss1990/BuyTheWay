//
//  BTTransferTableViewCell.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/26.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTTransferTableViewCell.h"

@implementation BTTransferTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initView];
    }
    return self;
    
}

-(void)setIsInfo:(NSString *)isInfo{
    if ([isInfo isEqualToString:@"1"] ) {
        self.titleImge.image = [UIImage imageNamed:@"ic_information_normal"];
        self.titleLabel.text = @"收获时间";
        self.detailLable.text = @"买家需在此时间前送货给你";
        self.regionView.sd_resetLayout.topSpaceToViewScale(self.lineView, 0).leftSpaceToViewScale(self.bgView, 0).rightSpaceToViewScale(self.bgView, 0).heightIsScale(50);
        self.regionView.typeString = @"time";
        [self.peopleView removeFromSuperview];
        [self.phoneView removeFromSuperview];
        [self.addressView removeFromSuperview];
        [self.emailImage removeFromSuperview];
    } else {
        
    }
    
}


-(void)initView{
    self.backgroundColor = colobg;
    self.bgView = [[UIView alloc] init];
    self.bgView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1/1.0];
    [self.contentView addSubview:self.bgView];
    self.bgView.sd_layout.topSpaceToViewScale(self.contentView, 10)
    .leftSpaceToViewScale(self.contentView, 15)
    .bottomSpaceToViewScale(self.contentView,5)
    .rightSpaceToViewScale(self.contentView, 15);
    self.bgView.layer.masksToBounds = YES;
    self.bgView.layer.cornerRadius = 10; 
    
    self.titleImge = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic_information_normal"]];
    self.titleImge.contentMode = UIViewContentModeScaleAspectFit;
    [self.bgView addSubview:self.titleImge];
    self.titleImge.sd_layout.topSpaceToViewScale(self.bgView, 10).leftSpaceToViewScale(self.bgView, 10).widthIsScale(18).heightIsScale(20);
    
    self.emailImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic_envelope_normal"]];
    self.emailImage.contentMode = UIViewContentModeScaleAspectFit;
    [self.bgView addSubview:self.emailImage];
    self.emailImage.sd_layout.bottomSpaceToViewScale(self.bgView, 32).rightSpaceToViewScale(self.bgView, 0).heightIsScale(104).widthIsScale(127);
    self.titleLabel = [[UILabel alloc]init];
    self.titleLabel.text = @"个人信息";
    self.titleLabel.textColor = colo51
    self.titleLabel.font = [UIFont fontWithTheSizeScale:15];
    [self.bgView addSubview:self.titleLabel];
    self.titleLabel.sd_layout.centerYEqualToView(self.titleImge).leftSpaceToViewScale(self.titleImge, 10).heightIsScale(20).widthIsScale(200);
    self.detailLable = [[UILabel alloc]init];
    self.detailLable.text = @"买家下单后可见，用于将包裹寄送给你";
    self.detailLable.textColor = colo153
    self.detailLable.font = [UIFont fontWithTheSizeScale:11];
    [self.bgView addSubview:self.detailLable];
    self.detailLable.sd_layout.topSpaceToViewScale(self.titleLabel, 5).leftEqualToView(self.titleLabel).heightIsScale(13).rightSpaceToViewScale(self.bgView, 15);
    self.lineView = [[UIView alloc]init];
    self.lineView.backgroundColor = colobg;
    [self.bgView addSubview:self.lineView];
    self.lineView.sd_layout.topSpaceToViewScale(self.detailLable, 10).leftSpaceToViewScale(self.bgView, 10).rightSpaceToViewScale(self.bgView, 10).heightIsScale(1);
    
 
    self.peopleView = [[BTInfomationView alloc]init];
    self.peopleView.typeString = @"name";
    [self.bgView addSubview:self.peopleView];
    self.peopleView.sd_layout.topSpaceToViewScale(self.lineView, 0).leftSpaceToViewScale(self.bgView, 0).rightSpaceToViewScale(self.bgView, 0).heightIsScale(50);
    
    self.regionView = [[BTInfomationView alloc]init];
    self.regionView.typeString = @"region";
    [self.bgView addSubview:self.regionView];
    self.regionView.sd_layout.topSpaceToViewScale(self.peopleView, 0).leftSpaceToViewScale(self.bgView, 0).rightSpaceToViewScale(self.bgView, 0).heightIsScale(50);
   
    self.addressView = [[BTInfomationView alloc]init];
    self.addressView.typeString = @"address";
    [self.bgView addSubview:self.addressView];
    self.addressView.sd_layout.topSpaceToViewScale(self.regionView, 0).leftSpaceToViewScale(self.bgView, 0).rightSpaceToViewScale(self.bgView, 0).heightIsScale(50);
    
    self.phoneView = [[BTInfomationView alloc]init];
    self.phoneView.typeString = @"phone";
    [self.bgView addSubview:self.phoneView];
    self.phoneView.sd_layout.topSpaceToViewScale(self.addressView, 0).leftSpaceToViewScale(self.bgView, 0).rightSpaceToViewScale(self.bgView, 0).heightIsScale(50);
    
     
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
