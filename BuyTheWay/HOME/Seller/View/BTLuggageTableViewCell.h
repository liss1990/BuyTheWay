//
//  BTLuggageTableViewCell.h
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/24.
//  Copyright © 2018年 思. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BTCalibrationView.h"
@interface BTLuggageTableViewCell : UITableViewCell
@property(nonatomic,strong)UIView *bgView;
@property(nonatomic,strong)UIImageView *titleImage;

@property(nonatomic,strong)UILabel *titleLbael;
@property(nonatomic,strong)UIButton *selectBtn;
@property(nonatomic,strong)UIView *lineView;
@property(nonatomic,strong)UIImageView *LuggImage; 
/**
长
 */
@property(nonatomic,strong)BTCalibrationView *lengthView;
/**
宽
 */
@property(nonatomic,strong)BTCalibrationView *widthView;

/**
 高
 */
@property(nonatomic,strong)BTCalibrationView *heightView;
/**
 重量
 */
@property(nonatomic,strong)BTCalibrationView *weightView;
@end
