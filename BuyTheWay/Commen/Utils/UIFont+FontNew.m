//
//  UIFont+FontNew.m
//  纳豆行
//
//  Created by 李丝思 on 16/8/19.
//  Copyright © 2016年 harryfeng. All rights reserved.
//

#import "UIFont+FontNew.h"
@implementation UIFont (FontNew)
+(UIFont*)fontWithTheSizeScale:(CGFloat)size
{
    return [UIFont systemFontOfSize:size*SCALE_WIDTH ];
    
}
@end
