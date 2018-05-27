//
//  HHH.h
//  huatu
//
//  Created by 李丝思 on 2018/5/25.
//  Copyright © 2018年 HY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyNewView.h"
@interface HHH : UIView
@property(nonatomic,assign)CGFloat li;
@property(nonatomic,strong)MyNewView *boxBig;
@property(nonatomic,strong)MyNewView *boxmix;
@property(nonatomic,assign)CGContextRef context;
@property(nonatomic,assign)CGContextRef context2;
@property(nonatomic,assign)CGFloat maxL;
@property(nonatomic,assign)CGFloat maxW;
@property(nonatomic,assign)CGFloat maxH;
-(void)updatBoxModel;
-(void)updateL:(CGFloat )L w:(CGFloat)w h:(CGFloat)h;
@end
