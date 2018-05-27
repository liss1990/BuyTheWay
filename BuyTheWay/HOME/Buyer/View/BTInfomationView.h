//
//  BTInfomationView.h
//  BuyTheWay
//
//  Created by 李丝思 on 2018/5/26.
//  Copyright © 2018年 思. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BTInfomationView : UIView
@property(nonatomic,strong)UIImageView *titleImage;
@property(nonatomic,strong)UITextField *textField;
@property(nonatomic,strong)UIView *verticalLineView;
@property(nonatomic,strong)UIButton *addressBookBtn;
@property(nonatomic,strong)UIView *crossLineView;
@property(nonatomic,copy)NSString *typeString;
@end
