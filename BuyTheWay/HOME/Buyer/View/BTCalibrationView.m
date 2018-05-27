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
    self.typeLabel.sd_layout.topSpaceToViewScale(self, 0).leftSpaceToViewScale(self, 0).widthIsScale(30).heightIsScale(19);
    self.typeDataExplainlabel = [[UILabel alloc]init];
    self.typeDataExplainlabel.textColor = colo153
    self.typeDataExplainlabel.text = @"(19.5in)";
    self.typeDataExplainlabel.font = [UIFont fontWithTheSizeScale:13];
    self.typeDataExplainlabel.textAlignment = NSTextAlignmentLeft;
    [self addSubview:self.typeDataExplainlabel];
    self.typeDataExplainlabel.sd_layout.topSpaceToViewScale(self, 0).widthIsScale(50).rightSpaceToViewScale(self, 0).heightIsScale(19); 
    
    self.typeDatalabel = [[UILabel alloc]init];
    self.typeDatalabel.textColor = colo51
    self.typeDatalabel.text = @"44cm";
    self.typeDatalabel.font = [UIFont fontWithTheSizeScale:13];
    self.typeDatalabel.textAlignment = NSTextAlignmentRight;
    [self addSubview:self.typeDatalabel];
    self.typeDatalabel.sd_layout.topSpaceToViewScale(self, 0).leftSpaceToViewScale(self.typeLabel, 0).rightSpaceToViewScale(self.typeDataExplainlabel, 0).heightIsScale(19);
    UIImage *leftTrack = [[UIImage imageNamed:@"img_weight_progress_selected"]
                          resizableImageWithCapInsets:UIEdgeInsetsMake(0, 14, 0, 14)];
    UIImage *rightTrack = [[UIImage imageNamed:@"img_progress_normal"]
                           resizableImageWithCapInsets:UIEdgeInsetsMake(0, 14, 0, 14)];
    self.typeSlider = [[UISlider alloc]init];
    self.typeSlider.maximumValue = 60 ;
    self.typeSlider.minimumValue =0; 
    [self.typeSlider setThumbImage:[UIImage imageNamed:@"img_circular_normal"] forState:UIControlStateNormal];
    self.typeSlider.maximumTrackTintColor =  [UIColor colorWithRed:231/255.0 green:231/255.0 blue:231/255.0 alpha:1/1.0];
    [self.typeSlider setMinimumTrackImage:leftTrack forState:UIControlStateNormal];
    [self.typeSlider setMaximumTrackImage:rightTrack forState:UIControlStateNormal];
    [self addSubview:self.typeSlider];
    self.typeSlider.sd_layout.topSpaceToViewScale(self.typeLabel, 0).leftSpaceToViewScale(self, 0).rightSpaceToViewScale(self, 0).heightIsScale(13);
    self.type0Label = [[UILabel alloc]init];
    self.type0Label.text = @"0";
    self.type0Label.font = [UIFont fontWithTheSizeScale:12];
    self.type0Label.textColor = [UIColor colorWithRed:38/255.0 green:166/255.0 blue:154/255.0 alpha:1/1.0];
    [self addSubview:self.type0Label];
    self.type0Label.sd_layout.topSpaceToViewScale(self.typeSlider, 5).leftSpaceToViewScale(self, 0).heightIsScale(14).widthIsScale(8);
   
    self.type30Label = [[UILabel alloc]init];
    self.type30Label.text = @"30";
    self.type30Label.textAlignment = NSTextAlignmentCenter;
    self.type30Label.font = [UIFont fontWithTheSizeScale:12];
    self.type30Label.textColor = [UIColor colorWithRed:38/255.0 green:166/255.0 blue:154/255.0 alpha:1/1.0];
    [self addSubview:self.type30Label];
    self.type30Label.sd_layout.topSpaceToViewScale(self.typeSlider, 5).centerXEqualToView(self.typeSlider).heightIsScale(14).widthIsScale(30);
    self.type60Label = [[UILabel alloc]init];
    self.type60Label.text = @"60";
    self.type60Label.textAlignment = NSTextAlignmentCenter;
    self.type60Label.font = [UIFont fontWithTheSizeScale:12];
    self.type60Label.textColor = [UIColor colorWithRed:38/255.0 green:166/255.0 blue:154/255.0 alpha:1/1.0];
    self.type60Label.textAlignment = NSTextAlignmentRight;
    [self addSubview:self.type60Label];
    self.type60Label.sd_layout.topSpaceToViewScale(self.typeSlider, 5).rightSpaceToViewScale(self, 0).heightIsScale(14).widthIsScale(30);
    
    self.type100Label = [[UILabel alloc]init];
    self.type100Label.text = @"60";
    self.type100Label.font = [UIFont fontWithTheSizeScale:12];
    self.type100Label.textColor = [UIColor colorWithRed:38/255.0 green:166/255.0 blue:154/255.0 alpha:1/1.0];
    self.type100Label.textAlignment = NSTextAlignmentRight;
    [self addSubview:self.type100Label];
    self.type100Label.sd_layout.topSpaceToViewScale(self.typeSlider, 5).rightSpaceToViewScale(self, 0).heightIsScale(14).widthIsScale(30);
    
}


-(void)setTypeString:(NSString *)typeString{
     self.type100Label.hidden = YES;
    self.typeLabel.text =  typeString;
    if ([typeString isEqualToString:@"长"]) {
        self.type0Label.text = @"0";
        self.type30Label.text = @"30";
        self.type60Label.text = @"60";
    } else if ([typeString isEqualToString:@"宽"]) {
        self.type0Label.text = @"0";
        self.type30Label.text = @"15";
        self.type60Label.text = @"30";
    } else if ([typeString isEqualToString:@"高"]) {
        self.type0Label.text = @"0";
        self.type30Label.text = @"50";
        self.type60Label.text = @"100";
    }else if ([typeString isEqualToString:@"重量"]){
        self.type0Label.text = @"0";
        self.type30Label.text = @"20";
        self.type60Label.text = @"40";
        self.type100Label.text = @"60";
         self.type30Label.sd_layout.topSpaceToViewScale(self.typeSlider, 5).leftSpaceToViewScale(self.type0Label, (SCREEN_WIDTH-60)/4).heightIsScale(14).widthIsScale(30);
        self.type60Label.sd_resetNewLayout.topSpaceToViewScale(self.typeSlider, 5).leftSpaceToViewScale(self.type30Label, (SCREEN_WIDTH-60)/4).heightIsScale(14).widthIsScale(30);
        
        self.type100Label.hidden = NO;
    }
    
    
    
    
}

@end
