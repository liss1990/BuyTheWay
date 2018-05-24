//
//  SDAutoLayoutModel+extendSDAutoLayout.h
//  纳豆行
//
//  Created by harryfeng on 16/8/21.
//  Copyright © 2016年 harryfeng. All rights reserved.
//

#import <SDAutoLayout/SDAutoLayout.h>

@interface SDAutoLayoutModel (extendSDAutoLayout)
@property(nonatomic, strong) SDAutoLayoutModelItem *width;
@property(nonatomic, strong) SDAutoLayoutModelItem *height;
@property(nonatomic, copy, readonly) MarginToView leftSpaceToViewScale;

/** 右边到其参照view之间的间距，参数为“(View, CGFloat)”  */
@property(nonatomic, copy, readonly) MarginToView rightSpaceToViewScale;
/** 顶部到其参照view之间的间距，参数为“(View 或者 view数组, CGFloat)”  */
@property(nonatomic, copy, readonly) MarginToView topSpaceToViewScale;
/** 底部到其参照view之间的间距，参数为“(View, CGFloat)”  */
@property(nonatomic, copy, readonly) MarginToView bottomSpaceToViewScale;

/** 宽度值，参数为“(CGFloat)”  */
@property(nonatomic, copy, readonly) WidthHeight widthIsScale;
/** 高度值，参数为“(CGFloat)”  */
@property(nonatomic, copy, readonly) WidthHeight heightIsScale;

@end
