//
//  BTSellerSendViewController.h
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/17.
//  Copyright © 2018年 思. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Sell.pbobjc.h"
@interface BTSellerSendViewController : UIViewController
/** 航班信息 */
@property(nonatomic, strong) FlightInfo *flightInfo;
/** 可以托运的space */
@property(nonatomic, strong) SpaceInfo *consignSpace;
/** 手提包的space */
@property(nonatomic, strong) SpaceInfo *handbagSpace;
@end


