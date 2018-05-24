//
//  BTLuggageTableViewCell.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/24.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTLuggageTableViewCell.h"

@implementation BTLuggageTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initView];
    }
    
    return self;
    
}

-(void)initView{
    self.backgroundColor = RGB(245, 245, 245);
    self.bgView = [[UIView alloc] init];
    self.bgView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1/1.0];
    [self.contentView addSubview:self.bgView];
    self.bgView.sd_layout.topSpaceToViewScale(self.contentView, 10)
    .leftSpaceToViewScale(self.contentView, 15)
    .bottomSpaceToViewScale(self.contentView,5)
    .rightSpaceToViewScale(self.contentView, 15);
    self.bgView.layer.masksToBounds = YES;
    self.bgView.layer.cornerRadius = 10;
    
    self.titleImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"xinglixiang"]];
    [self.bgView addSubview:self.titleImage];
    self.titleImage.sd_layout.topSpaceToViewScale(self.bgView, 20).leftSpaceToViewScale(self.bgView, 10)
    .heightIsScale(27).widthIsScale(20);
    
    self.selectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.selectBtn setImage:[UIImage imageNamed:@"quan"] forState:0];
    [self.selectBtn setImage:[UIImage imageNamed:@"gouxuan"] forState:UIControlStateSelected];
    [self.bgView addSubview:self.selectBtn];
    self.selectBtn.sd_layout.centerYEqualToView(self.titleImage).rightSpaceToViewScale(self.bgView, 10).heightIsScale(20).widthEqualToHeight();
    
    self.titleLbael = [[UILabel alloc]init];
    self.titleLbael.text = @"闲置的行李箱空间";
    self.titleLbael.font = [UIFont fontWithTheSizeScale:15];
    self.titleLbael.textColor = RGB(51, 51, 51);
    [self.bgView addSubview:self.titleLbael];
    self.titleLbael.sd_layout.centerYEqualToView(self.titleImage).leftSpaceToViewScale(self.titleImage, 15).heightIsScale(21).rightSpaceToViewScale(self.selectBtn, 20);
    
    self.lineView = [[UIView alloc]init];
    self.lineView.backgroundColor = RGB(230, 230, 230);
    [self.bgView addSubview:self.lineView];
    self.lineView.sd_layout.leftSpaceToViewScale(self.bgView, 10).topSpaceToViewScale(self.titleImage, 15)
    .heightIsScale(1).rightSpaceToViewScale(self.bgView, 10);
    
    self.LuggImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"jianying2"]];
    self.LuggImage.contentMode = UIViewContentModeScaleAspectFit;
    [self.bgView addSubview:self.LuggImage ];
    self.LuggImage.sd_layout.topSpaceToViewScale(self.lineView, 19).leftSpaceToViewScale(self.bgView, 20).heightIsScale(150).widthIsScale(120);
    
    self.lengthView = [[BTCalibrationView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.LuggImage.frame), CGRectGetMaxY(self.lineView.frame)+10, (SCREEN_WIDTH-30-20)/2, 46)];
//    self.lengthView.backgroundColor = [UIColor redColor];
    [self.bgView addSubview:self.lengthView ];
    self.lengthView.sd_layout.topSpaceToViewScale(self.lineView, 20)
    .leftSpaceToViewScale(self.LuggImage, 30).rightSpaceToViewScale(self.bgView, 20).heightIsScale(46);
    
    self.widthView = [[BTCalibrationView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.LuggImage.frame), CGRectGetMaxY(self.lineView.frame)+10, (SCREEN_WIDTH-30-20)/2, 46)];
    //    self.lengthView.backgroundColor = [UIColor redColor];
    [self.bgView addSubview:self.widthView ];
    self.widthView.sd_layout.topSpaceToViewScale(self.lengthView, 25)
    .leftSpaceToViewScale(self.LuggImage, 30).rightSpaceToViewScale(self.bgView, 20).heightIsScale(46);
    
    self.heightView = [[BTCalibrationView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.LuggImage.frame), CGRectGetMaxY(self.lineView.frame)+10, (SCREEN_WIDTH-30-20)/2, 46)];
    //    self.lengthView.backgroundColor = [UIColor redColor];
    [self.bgView addSubview:self.heightView ];
    self.heightView.sd_layout.topSpaceToViewScale(self.widthView, 25)
    .leftSpaceToViewScale(self.LuggImage, 30).rightSpaceToViewScale(self.bgView, 20).heightIsScale(46);
    
    
    
    
    
    
    
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
