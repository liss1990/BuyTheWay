//
//  HHH.m
//  huatu
//
//  Created by 李丝思 on 2018/5/25.
//  Copyright © 2018年 HY. All rights reserved.
//

#import "HHH.h"
#define W  200
#define H 200
#define G 50
@implementation HHH

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.boxBig = [[MyNewView alloc]init];
        self.boxmix = [[MyNewView alloc]init];
//        [self.boxBig updateL:100 w:60 h:150];
        self.backgroundColor = [UIColor whiteColor];
//        self.context = UIGraphicsGetCurrentContext();
//        [self huabu1:self.boxBig contxt:self.context color:[UIColor whiteColor] isBgBox:YES];
    }
    return self;
}
-(void)setMaxH:(CGFloat)maxH{
    _maxH = maxH;
}
-(void)setMaxL:(CGFloat)maxL{
    _maxL = maxL;
}
-(void)setMaxW:(CGFloat)maxW{
    _maxW = maxW;
}


-(void)updatBoxModel{
      [self.boxBig updateL:self.maxL w:self.maxW h:self.maxH];
}
- (void)drawRect:(CGRect)rect {
    self.context = UIGraphicsGetCurrentContext();
//    self.context2 = UIGraphicsGetCurrentContext();
    [self huabu1:self.boxBig contxt:self.context color:[UIColor whiteColor] isBgBox:YES];
    [self huabu1:self.boxmix contxt:self.context color:[UIColor colorWithRed:193.0/255.0 green:225.0/255.0 blue:222/255.0   alpha:1] isBgBox:NO];
}


-(void)updateL:(CGFloat )L w:(CGFloat)w h:(CGFloat)h{
    [self.boxmix updateL:L w:w h:h]; 
    CGPoint movePoint = CGPointMake(self.boxBig.z0.x - self.boxmix.z0.x , self.boxBig.z0.y - self.boxmix.z0.y);
    [self.boxmix movePoin:movePoint];
    [self update];
}
-(void)update{
//    CGContextClosePath(self.context);
    [self setNeedsDisplay];
}

-(void)huabu1:(MyNewView *)box contxt:(CGContextRef )context color:(UIColor*)color isBgBox:(BOOL)isBgBox {
    [color set];
//    context = UIGraphicsGetCurrentContext();
    ///前面的
    CGPoint sPoints0[4];
    sPoints0[0] = box.y3;// self.y3;
    sPoints0[1] = box.y2;//self.y2;
    sPoints0[2] = box.z2;//self.z2;
    sPoints0[3] = box.z3;//self.z3;
    CGContextAddLines(context, sPoints0, 4);//添加线
//     CGContextSetLineWidth(context, 1);
    CGContextClosePath(context);//封起来
    ///画底部线
//    CGFloat dashArray[] = {5, 5}; // 表示先绘制10个点，再跳过10个点
//    CGContextSetLineWidth(context, 0.3); // 设置线的宽度
//    CGContextSetLineDash(context, 0, dashArray, 2); // 画虚
//    [color setStroke];
    if (isBgBox == YES) {
          [[UIColor colorWithRed:179/255.0 green:179/255.0 blue:179/255.0 alpha:1]setStroke];
    } else {
         
          [color setStroke];
    }
    CGContextDrawPath(context, kCGPathFillStroke); //根据坐标绘制路径
    
    ////画右边
    //    CGContextRef context = UIGraphicsGetCurrentContext();
    CGPoint sPoints[4];//坐标点
    sPoints[0] =box.y1;//坐标1
    sPoints[1] =box.z1;  // CGPointMake(200*self.li, 150*self.li);//坐标2
    sPoints[2] = box.z2; //CGPointMake(150*self.li, 200*self.li);//坐标3
    sPoints[3] = box.y2; //CGPointMake(150*self.li, 50*self.li);//坐标3
    CGContextAddLines(context, sPoints, 4);//添加线
    CGContextClosePath(context);//封起来
//    [[UIColor groupTableViewBackgroundColor]setStroke];
    CGContextDrawPath(context, kCGPathFillStroke); //根据坐标绘制路径
    
    ////画上边
    //    CGContextRef context2 = UIGraphicsGetCurrentContext();
    CGPoint sPoints2[4];//坐标点
    sPoints2[0] = box.y0;  //CGPointMake(50*self.li, 0);//坐标1
    sPoints2[1] = box.y1; //CGPointMake(200*self.li, 0);//坐标2
    sPoints2[2] = box.y2;  //CGPointMake(150*self.li, 50*self.li);//坐标3
    sPoints2[3] = box.y3; // CGPointMake(0, 50*self.li);//坐标3
    CGContextAddLines(context, sPoints2, 4);//添加线
    CGContextClosePath(context);//封起来
    CGContextDrawPath(context, kCGPathFillStroke); //根据坐标绘制路径
    
    ///画底部线
    CGFloat dashArray1[] = {5, 5}; // 表示先绘制10个点，再跳过10个点
//    CGContextSetLineWidth(context, 0.3); // 设置线的宽度
    CGContextSetLineDash(context, 0, dashArray1, 2); // 画虚线
    //指定直线样式
    CGContextSetLineCap(context, kCGLineCapSquare);
    //直线宽度
//    CGContextSetLineWidth(context, 1.0);
    //设置颜色
    CGContextSetRGBStrokeColor(context, 179/255.0,  179/255.0,  179/255.0, 1.0);
    //开始绘制
    CGContextBeginPath(context);
    //画笔移动到点(31,170)
    CGContextMoveToPoint(context, box.y0.x, box.y0.y);
    //下一点
    CGContextAddLineToPoint(context, box.z0.x, box.z0.y);
    //下一点
    CGContextAddLineToPoint(context, box.z3.x, box.z3.y);
    //绘制完成
    CGContextStrokePath(context);
    
    ///画里面的一横线
    //指定直线样式
    CGContextSetLineCap(context, kCGLineCapSquare);
    //直线宽度
    CGContextSetLineWidth(context, 1.0);
    //设置颜色
    CGContextSetRGBStrokeColor(context, 179/255.0,  179/255.0,  179/255.0, 1.0);
    //开始绘制
    CGContextBeginPath(context);
    CGContextMoveToPoint(context,box.z0.x, box.z0.y);
    CGContextAddLineToPoint(context, box.z1.x,box.z1.y); 
    //绘制完成
    CGContextStrokePath(context);
}
- (void)drawLinearGradient:(CGContextRef)context

                      path:(CGPathRef)path

                startColor:(CGColorRef)startColor

                  endColor:(CGColorRef)endColor

{
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    CGFloat locations[] = { 0.0, 1.0 };
    
    NSArray *colors = @[(__bridge id) startColor, (__bridge id) endColor];
    
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef) colors, locations);
    
    CGRect pathRect = CGPathGetBoundingBox(path);
    
    //具体方向可根据需求修改
    
    CGPoint startPoint = CGPointMake(CGRectGetMidX(pathRect), CGRectGetMinY(pathRect));
    
    CGPoint endPoint = CGPointMake(CGRectGetMidX(pathRect), CGRectGetMaxY(pathRect));
    
    CGContextSaveGState(context);
    
    CGContextAddPath(context, path);
    
    CGContextClip(context);
    
    CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, 0);
    
    CGContextRestoreGState(context);
    
    CGGradientRelease(gradient);
    
    CGColorSpaceRelease(colorSpace);
    
}
@end
