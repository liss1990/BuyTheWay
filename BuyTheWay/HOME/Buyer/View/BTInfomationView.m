//
//  BTInfomationView.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/26.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTInfomationView.h"

@implementation BTInfomationView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}


-(void)initView{
    self.titleImage = [[UIImageView alloc]init];
    self.titleImage.image = [UIImage imageNamed:@"ic_name_normal"];
    self.titleImage.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:self.titleImage];
    self.titleImage.sd_layout.centerYEqualToView(self)
    .leftSpaceToViewScale(self, 10).heightIsScale(20).widthIsScale(20);
    
    
    self.addressBookBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.addressBookBtn setImage:[UIImage imageNamed:@"ic_usualaddress_normal"] forState:0];
    [self addSubview:self.addressBookBtn];
    self.addressBookBtn.sd_layout.centerYEqualToView(self).rightSpaceToViewScale(self, 10)
    .widthIsScale(50).heightIsScale(40);
    
    self.verticalLineView = [[UIView alloc]init];
    self.verticalLineView.backgroundColor = RGB(230, 230, 230);
    [self addSubview:self.verticalLineView];
    self.verticalLineView.sd_layout.rightSpaceToViewScale(self.addressBookBtn, 10).heightIsScale(25).widthIsScale(1).centerYEqualToView(self);
    
    self.textField = [[UITextField alloc]init];
    self.textField.placeholder = @"请输入";
    self.textField.font = [UIFont fontWithTheSizeScale:15];
    [self addSubview:self.textField];
    self.textField.sd_layout.centerYEqualToView(self).leftSpaceToViewScale(self.titleImage, 20).heightIsScale(30).rightSpaceToViewScale(self.verticalLineView, 10);
    
    self.crossLineView =  [[UIView alloc]init];
    self.crossLineView.backgroundColor = colobg;
    [self addSubview:self.crossLineView];
    self.crossLineView.sd_layout.heightIsScale(1).rightSpaceToViewScale(self, 10).bottomSpaceToViewScale(self, 0).leftSpaceToViewScale(self, 10);
    
}


-(void)setTypeString:(NSString *)typeString{
    if ([typeString isEqualToString:@"name"]) {
        
    }else if ([typeString isEqualToString:@"region"]) {
        self.addressBookBtn.hidden = YES;
        self.verticalLineView.hidden = YES;
    }else if ([typeString isEqualToString:@"phone"]) {
        self.addressBookBtn.hidden = YES;
        self.verticalLineView.hidden = YES;
    }
    
}









@end
