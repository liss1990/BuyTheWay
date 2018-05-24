//
//  BTCalibrationView.m
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/25.
//  Copyright © 2018年 思. All rights reserved.
//

#import "BTCalibrationView.h"

@implementation BTCalibrationView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}

-(void)initView{
    self.typeLabel = [[UILabel alloc]init];
    self.typeLabel.textColor = colo153
    self.typeLabel.text = @"长";
    self.typeLabel.font = [UIFont fontWithTheSizeScale:13];
    [self addSubview:self.typeLabel];
    self.typeLabel.sd_layout.topSpaceToViewScale(self, 0).leftSpaceToViewScale(self, 0).widthIsScale(16).heightIsScale(19);
    
    self.typeDatalabel = [[UILabel alloc]init];
    self.typeDatalabel.textColor = colo51
    self.typeDatalabel.text = @"44cm(19.5in)";
    self.typeDatalabel.font = [UIFont fontWithTheSizeScale:13];
    self.typeDatalabel.textAlignment = NSTextAlignmentRight;
    [self addSubview:self.typeDatalabel];
    self.typeDatalabel.sd_layout.topSpaceToViewScale(self, 0).leftSpaceToViewScale(self.typeLabel, 0).rightSpaceToViewScale(self, 0).heightIsScale(19);
    
    self.typeSlider = [[UISlider alloc]init];
    self.typeSlider.maximumValue = 60 ;
    self.typeSlider.minimumValue  =0;
    [self addSubview:self.typeSlider];
    self.typeSlider.sd_layout.topSpaceToViewScale(self.typeLabel, 10).leftSpaceToViewScale(self, 0).rightSpaceToViewScale(self, 0).heightIsScale(13);
    self.type0Label = [[UILabel alloc]init];
    self.type0Label.text = @"0";
    self.type0Label.font = [UIFont fontWithTheSizeScale:12];
    self.type0Label.textColor = coloNav
    [self addSubview:self.type0Label];
    self.type0Label.sd_layout.topSpaceToViewScale(self.typeSlider, 5).leftSpaceToViewScale(self, 0).heightIsScale(14).widthIsScale(8);
   
    self.type30Label = [[UILabel alloc]init];
    self.type30Label.text = @"30";
    self.type30Label.font = [UIFont fontWithTheSizeScale:12];
    self.type30Label.textColor = coloNav
    [self addSubview:self.type30Label];
    self.type30Label.sd_layout.topSpaceToViewScale(self.typeSlider, 5).centerXEqualToView(self.typeSlider).heightIsScale(14).widthIsScale(8);
    self.type60Label = [[UILabel alloc]init];
    self.type60Label.text = @"30";
    self.type60Label.font = [UIFont fontWithTheSizeScale:12];
    self.type60Label.textColor = coloNav
    self.type60Label.textAlignment = NSTextAlignmentRight;
    [self addSubview:self.type60Label];
    self.type60Label.sd_layout.topSpaceToViewScale(self.typeSlider, 5).rightSpaceToViewScale(self, 0).heightIsScale(14).widthIsScale(30);
    
    
    
    
}

@end
