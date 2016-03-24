//
//  UIView+Gradient.h
//  GiftBox
//
//  Created by 康健 on 15/12/29.
//  Copyright © 2015年 xinyihezi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView(Gradient)
/** 设置渐变
 * @param startColor 起始颜色
 * @param endColor 结束颜色
 */
- (void)setGradientWithStartColor:(UIColor *)startColor
                         endColor:(UIColor *)endColor;
/**
 * 移除当前的渐变
 */
- (void)removeGradient;
@end