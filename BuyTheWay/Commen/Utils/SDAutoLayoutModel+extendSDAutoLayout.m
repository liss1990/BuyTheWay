//
//  SDAutoLayoutModel+extendSDAutoLayout.m
//  纳豆行
//
//  Created by harryfeng on 16/8/21.
//  Copyright © 2016年 harryfeng. All rights reserved.
//

//#import "Define.h"
#import "SDAutoLayoutModel+extendSDAutoLayout.h"
@implementation SDAutoLayoutModel (extendSDAutoLayout)

@dynamic leftSpaceToViewScale;
- (MarginToView)leftSpaceToViewScale {
  __weak typeof(self) weakSelf = self;
  return ^(id viewOrViewsArray, CGFloat value) {
    SDAutoLayoutModelItem *item = [SDAutoLayoutModelItem new];
    item.value = @(value * SCALE_WIDTH);
    if ([viewOrViewsArray isKindOfClass:[UIView class]]) {
      item.refView = viewOrViewsArray;
    } else if ([viewOrViewsArray isKindOfClass:[NSArray class]]) {
      item.refViewsArray = [viewOrViewsArray copy];
    }
    [weakSelf setValue:item forKey:@"left"];
    return weakSelf;
  };
}

@dynamic rightSpaceToViewScale;
- (MarginToView)rightSpaceToViewScale {
  __weak typeof(self) weakSelf = self;
  return ^(id viewOrViewsArray, CGFloat value) {
    SDAutoLayoutModelItem *item = [SDAutoLayoutModelItem new];
    item.value = @(value * SCALE_WIDTH);
    if ([viewOrViewsArray isKindOfClass:[UIView class]]) {
      item.refView = viewOrViewsArray;
    } else if ([viewOrViewsArray isKindOfClass:[NSArray class]]) {
      item.refViewsArray = [viewOrViewsArray copy];
    }
    [weakSelf setValue:item forKey:@"right"];
    return weakSelf;
  };
}

@dynamic topSpaceToViewScale;
- (MarginToView)topSpaceToViewScale {
  __weak typeof(self) weakSelf = self;
  return ^(id viewOrViewsArray, CGFloat value) {
    SDAutoLayoutModelItem *item = [SDAutoLayoutModelItem new];
    item.value = @(value * SCALE_WIDTH);
    if ([viewOrViewsArray isKindOfClass:[UIView class]]) {
      item.refView = viewOrViewsArray;
    } else if ([viewOrViewsArray isKindOfClass:[NSArray class]]) {
      item.refViewsArray = [viewOrViewsArray copy];
    }
    [weakSelf setValue:item forKey:@"top"];
    return weakSelf;
  };
}

@dynamic bottomSpaceToViewScale;
- (MarginToView)bottomSpaceToViewScale {
  __weak typeof(self) weakSelf = self;
  return ^(id viewOrViewsArray, CGFloat value) {
    SDAutoLayoutModelItem *item = [SDAutoLayoutModelItem new];
    item.value = @(value * SCALE_WIDTH);
    if ([viewOrViewsArray isKindOfClass:[UIView class]]) {
      item.refView = viewOrViewsArray;
    } else if ([viewOrViewsArray isKindOfClass:[NSArray class]]) {
      item.refViewsArray = [viewOrViewsArray copy];
    }
    [weakSelf setValue:item forKey:@"bottom"];
    return weakSelf;
  };
}

@dynamic widthIsScale;
- (WidthHeight)widthIsScale {

  return ^(CGFloat value) {
    self.needsAutoResizeView.fixedWidth = @(value);
    SDAutoLayoutModelItem *widthItem = [SDAutoLayoutModelItem new];
    widthItem.value = @(value * SCALE_WIDTH);
    self.width = widthItem;
    return self;
  };
}

@dynamic heightIsScale;
- (WidthHeight)heightIsScale {
  return ^(CGFloat value) {
    self.needsAutoResizeView.fixedHeight = @(value);
    SDAutoLayoutModelItem *heightItem = [SDAutoLayoutModelItem new];
    heightItem.value = @(value * SCALE_WIDTH);
    self.height = heightItem;
    return self;
  };
}

@end
