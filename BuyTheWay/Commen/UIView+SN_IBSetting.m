//
//  UIView+SN_IBSetting.m
//  SmartNote
//
//  Created by Rick on 25/01/2018.
//  Copyright © 2018 Rick. All rights reserved.
//

#import "UIView+SN_IBSetting.h"

@implementation UIView (SN_IBSetting)
- (void)setSN_cornerRadius:(CGFloat)SN_cornerRadius
{
    self.layer.cornerRadius = SN_cornerRadius;
    self.layer.masksToBounds = (SN_cornerRadius != 0);
}

- (CGFloat)SN_cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setSN_borderColor:(UIColor *)SN_borderColor
{
    self.layer.borderColor = SN_borderColor.CGColor;
}

- (UIColor *)SN_borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setSN_borderWidth:(CGFloat)SN_borderWidth
{
    self.layer.borderWidth = SN_borderWidth;
}

- (CGFloat)SN_borderWidth
{
    return self.layer.borderWidth;
}

@end
