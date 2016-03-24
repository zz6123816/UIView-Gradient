//
//  UIView+Gradient.m
//  GiftBox
//
//  Created by 康健 on 15/12/29.
//  Copyright © 2015年 xinyihezi. All rights reserved.
//
#import "UIView+Gradient.h"

@implementation UIView(Gradient)
- (void)setHeaderLayer:(CAGradientLayer *)headerLayer {
    objc_setAssociatedObject(self, "_headerLayer", headerLayer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (CAGradientLayer *)headerLayer {
    return objc_getAssociatedObject(self, "_headerLayer");
}
//Transparent Gradient Layer
- (void)setGradientWithStartColor:(UIColor *)startColor
                         endColor:(UIColor *)endColor {
    NSArray *colors = [NSArray arrayWithObjects:(id)startColor.CGColor, endColor.CGColor, nil];
    NSNumber *stopOne = [NSNumber numberWithFloat:0.0];
    NSNumber *stopTwo = [NSNumber numberWithFloat:1.0];
    NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, nil];
    
    //crate gradient layer
    if (self.headerLayer == nil) {
        self.headerLayer = [CAGradientLayer layer];
    }
    
    
    self.headerLayer.colors = colors;
    self.headerLayer.locations = locations;
    self.headerLayer.frame = self.bounds;
    
    [self.layer insertSublayer:self.headerLayer atIndex:0];
}
- (void)removeGradient {
    if (self.headerLayer == nil) {
        return;
    }
    [self setGradientWithStartColor:[UIColor clearColor] endColor:[UIColor clearColor]];
}
@end