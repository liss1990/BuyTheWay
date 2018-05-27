//
//  BTLuggageTableViewCell.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/24.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTLuggageTableViewCell.h"
//self.h1 = 150;
//self.w = 70;
//self.l = 90;
#define L FIX_SCREEN_WIDTH(91)
#define H FIX_SCREEN_WIDTH(150)
#define W FIX_SCREEN_WIDTH(72)

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
    
    self.titleImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic_luggage_normal"]];
    [self.bgView addSubview:self.titleImage];
    self.titleImage.sd_layout.topSpaceToViewScale(self.bgView, 16).leftSpaceToViewScale(self.bgView, 10)
    .heightIsScale(27).widthIsScale(20);
    
    self.selectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.selectBtn setImage:[UIImage imageNamed:@"ic_choose_normal"] forState:0];
    [self.selectBtn setImage:[UIImage imageNamed:@"ic_choose_selected"] forState:UIControlStateSelected];
    [self.bgView addSubview:self.selectBtn];
    self.selectBtn.sd_layout.centerYEqualToView(self.titleImage).rightSpaceToViewScale(self.bgView, 10).heightIsScale(20).widthEqualToHeight();
    [self.selectBtn addTarget:self action:@selector(tapSelectBtn:) forControlEvents:1<<6];
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
    
    self.LuggImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img_luggage_selected"]];
    self.LuggImage.contentMode = UIViewContentModeScaleAspectFit;
    [self.bgView addSubview:self.LuggImage ];
    self.LuggImage.sd_layout.topSpaceToViewScale(self.lineView, 19).rightSpaceToViewScale(self.bgView, 20).heightIsScale(150).widthIsScale(120);
 
    self.h1 = H;
    self.w = W;
    self.l = L;
    self.boxView = [[BTBoxView alloc]initWithFrame:CGRectMake(1,1, L  + W  * 0.707 ,H + W * 0.707 )];
    self.boxView.maxH = self.h1;
    self.boxView.maxW = self.w;
    self.boxView.maxL = self.l;
    [self.boxView updatBoxModel];
    [self.bgView addSubview:self.boxView];
    self.boxView.sd_layout.leftSpaceToViewScale(self.bgView, 10).topSpaceToViewScale(self.lineView, 20).widthIs( L  + W  * 0.707 ).heightIs(H + W * 0.707 );
//
    self.smallView = [[UIView alloc]initWithFrame:CGRectMake(10*SCALE_WIDTH, 70*SCALE_WIDTH, L  + W  * 0.707 ,H + W * 0.707 )];
    self.smallView.backgroundColor = [UIColor whiteColor];
    [self.bgView addSubview:self.smallView];
    self.smallView.sd_layout.leftSpaceToViewScale(self.bgView, 10).topSpaceToViewScale(self.lineView, 20).widthIs(W  * 0.707 ).heightIs(1);
    self.smallView1 = [[UIView alloc]initWithFrame:CGRectMake(10*SCALE_WIDTH, 70*SCALE_WIDTH, L  + W  * 0.707 ,H + W * 0.707 )];
    self.smallView1.backgroundColor = [UIColor whiteColor];
    [self.bgView addSubview:self.smallView1];
    self.smallView1.sd_layout.rightEqualToView(self.boxView).bottomEqualToView(self.boxView).widthIs(1).heightIs(W  * 0.707);
    
    
    
    self.lengthView = [[BTCalibrationView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.LuggImage.frame), CGRectGetMaxY(self.lineView.frame)+10, (SCREEN_WIDTH-30-20)/2, 46)]; 
    [self.bgView addSubview:self.lengthView ];
    self.lengthView.typeString = @"长";
    self.lengthView.typeSlider.tag = 0;
    WeakSelf(self)
    self.lengthView.sliderBlock = ^(CGFloat sdValue, NSInteger tag) {
//        weakself.sliderBlock(sdValue, tag);
        [weakself updataSenderData];
    };
    self.lengthView.sd_layout.topSpaceToViewScale(self.lineView, 15)
    .leftSpaceToViewScale(self.boxView, 25).rightSpaceToViewScale(self.bgView, 15).heightIsScale(46);
    
    self.widthView = [[BTCalibrationView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.LuggImage.frame), CGRectGetMaxY(self.lineView.frame)+10, (SCREEN_WIDTH-30-20)/2, 46)];
    self.widthView.typeString = @"宽";
    self.widthView.typeSlider.tag = 1;
    self.widthView.sliderBlock = ^(CGFloat sdValue, NSInteger tag) {
//         weakself.sliderBlock(sdValue, tag);
        [weakself updataSenderData];
        
    };
    [self.bgView addSubview:self.widthView ];
    self.widthView.sd_layout.topSpaceToViewScale(self.lengthView, 15)
    .leftSpaceToViewScale(self.boxView, 25).rightSpaceToViewScale(self.bgView, 15).heightIsScale(46);
    
    self.heightView = [[BTCalibrationView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.LuggImage.frame), CGRectGetMaxY(self.lineView.frame)+10, (SCREEN_WIDTH-30-20)/2, 46)];
    self.heightView.typeString = @"高";
    self.heightView.sliderBlock = ^(CGFloat sdValue, NSInteger tag) {
        [weakself updataSenderData];
//         weakself.sliderBlock(sdValue, tag);
    };
    [self.bgView addSubview:self.heightView ];
    
    self.heightView.sd_layout.topSpaceToViewScale(self.widthView, 15)
    .leftSpaceToViewScale(self.boxView, 25).rightSpaceToViewScale(self.bgView, 15).heightIsScale(46);
    
    self.weightView = [[BTCalibrationView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.LuggImage.frame), CGRectGetMaxY(self.boxView.frame)+30, (SCREEN_WIDTH-30-20)/2, 46)];
    self.weightView.typeString = @"重量";
    self.weightView.sliderBlock = ^(CGFloat sdValue, NSInteger tag) {
        
    };
    [self.bgView addSubview:self.weightView];
    self.weightView.sd_layout.leftSpaceToViewScale(self.bgView, 15).rightSpaceToViewScale(self.bgView, 15).heightIsScale(46).topSpaceToViewScale(self.boxView,10);
}

-(void)updataSenderData{
    CGFloat l = L * self.lengthView.typeSlider.value;
    CGFloat w = W * self.widthView.typeSlider.value;
    CGFloat h = H * self.heightView.typeSlider.value;
    [self.boxView updateL:l  w:w h: h ];
}


-(void)tapSelectBtn:(UIButton*)sender{
    sender.selected = !sender.selected;
    self.selectBlock(sender.isSelected, sender.tag);
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
