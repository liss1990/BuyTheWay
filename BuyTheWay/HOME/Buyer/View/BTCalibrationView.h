//
//  BTCalibrationView.h
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/25.
//  Copyright © 2018年 思. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^SliderUpdateBlock)(CGFloat sdValue , NSInteger tag);

@interface BTCalibrationView : UIView
@property(nonatomic,strong)NSString *typeString;
/**
 长
 */
@property(nonatomic,strong)UILabel *typeLabel;
@property(nonatomic,strong)UILabel *typeDatalabel;
@property(nonatomic,strong)UILabel *typeDataExplainlabel;
@property(nonatomic,strong)UISlider *typeSlider;
@property(nonatomic,strong)UILabel *type0Label;
@property(nonatomic,strong)UILabel *type30Label;
@property(nonatomic,strong)UILabel *type60Label;
@property(nonatomic,strong)UILabel *type100Label;
@property(nonatomic,strong)SliderUpdateBlock sliderBlock;

@property(nonatomic,assign)CGFloat date;

@end
