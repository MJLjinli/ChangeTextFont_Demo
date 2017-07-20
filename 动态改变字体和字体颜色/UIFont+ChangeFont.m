//
//  UIFont+ChangeFont.m
//  动态改变字体和字体颜色
//
//  Created by 马金丽 on 17/7/6.
//  Copyright © 2017年 majinli. All rights reserved.
//

#import "UIFont+ChangeFont.h"

#import <objc/runtime.h>

@implementation UIFont (ChangeFont)

+ (void)load
{
    Method newMethod = class_getClassMethod([self class], @selector(changeFont:));
    Method oldMethod = class_getClassMethod([self class], @selector(systemFontOfSize:));
    method_exchangeImplementations(newMethod, oldMethod);

    
}



+(UIFont *)changeFont:(CGFloat)changeFont
{
    UIFont *newFont = nil;
    if (IPHONE_6p) {
        newFont = [UIFont changeFont:changeFont + IPHONE_6Change];
    }else{
        newFont = [UIFont changeFont:changeFont];
    }
    return newFont;
}




@end
