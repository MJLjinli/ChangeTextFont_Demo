//
//  UIFont+ChangeFont.h
//  动态改变字体和字体颜色
//
//  Created by 马金丽 on 17/7/6.
//  Copyright © 2017年 majinli. All rights reserved.
//

#import <UIKit/UIKit.h>

#define IPHONE_5 [UIScreen mainScreen].bounds.size.height == 568
#define IPHONE_6 [UIScreen mainScreen].bounds.size.height == 667
#define IPHONE_6p [UIScreen mainScreen].bounds.size.height == 736

#define IPHONE_6Change 5

@interface UIFont (ChangeFont)

+ (UIFont *)changeFont:(CGFloat)changeFont;


@end
