//
//  MyNewView.m
//  huatu
//
//  Created by 李丝思 on 2018/5/25.
//  Copyright © 2018年 HY. All rights reserved.
//

#import "MyNewView.h"

@implementation MyNewView

-(void)movePoin:(CGPoint)point{
     self.z0 = CGPointMake(point.x + self.z0.x, self.z0.y+point.y);
     self.z1 = CGPointMake(point.x + self.z1.x, self.z1.y+point.y);
     self.z2 = CGPointMake(point.x + self.z2.x, self.z2.y+point.y);
     self.z3 = CGPointMake(point.x + self.z3.x, self.z3.y+point.y);
    
     self.y0 = CGPointMake(point.x + self.y0.x, self.y0.y+point.y);
     self.y1 = CGPointMake(point.x + self.y1.x, self.y1.y+point.y);
     self.y2 = CGPointMake(point.x + self.y2.x, self.y2.y+point.y);
     self.y3 = CGPointMake(point.x + self.y3.x, self.y3.y+point.y);
}

-(void)updateL:(CGFloat )L w:(CGFloat)w h:(CGFloat)h{
    CGFloat geng = 0.707;
    
    CGPoint newz0 = self.z0 ;
    newz0.x = w * geng;
    newz0.y = h;
    self.z0 = newz0;
    
    CGPoint newz1 = self.z1 ;
    newz1.x = L + w * geng;
    newz1.y = h;
    self.z1 = newz1;
    
    CGPoint newz2 = self.z2 ;
    newz2.x = L ;
    newz2.y = h +w * geng;
    self.z2 = newz2;
    
    CGPoint newz3 = self.z3 ;
    newz3.x = 0 ;
    newz3.y = h + w *geng;
    self.z3 = newz3;
    
    
    CGPoint newy0 = self.y0 ;
    newy0.x = w *geng ;
    newy0.y = 0;
    self.y0 = newy0;
    
    CGPoint newy1 = self.y1 ;
    newy1.x = L + w *geng ;
    newy1.y = 0;
    self.y1 = newy1;
    CGPoint newy2 = self.y2 ;
    newy2.x = L ;
    newy2.y = w *geng;
    self.y2 = newy2;
    
    CGPoint newy3 = self.y3;
    newy3.x = 0 ;
    newy3.y = w *geng;
    self.y3 = newy3;
}

@end
