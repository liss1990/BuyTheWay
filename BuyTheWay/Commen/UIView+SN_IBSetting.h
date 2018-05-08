//
//  UIView+SN_IBSetting.h
//  SmartNote
//
//  Created by Rick on 25/01/2018.
//  Copyright © 2018 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface UIView (SN_IBSetting)

@property (assign, nonatomic) IBInspectable CGFloat SN_cornerRadius;
@property (nonatomic) IBInspectable UIColor *SN_borderColor;
@property (nonatomic) IBInspectable CGFloat SN_borderWidth;


@end
