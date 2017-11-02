//
//  UIView+Color.m
//  ColorTool
//
//  Created by 郭枫 on 2017/11/1.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "UIView+Color.h"

@implementation UIView (Color)

- (void)createBackGroundGradientColorLayerWithView:(UIView *)view Bounds:(CGRect)bounds LeftColor:(UIColor *)leftCorlor RightColor:(UIColor *)rightColor {
  CAGradientLayer *gradientLayer = [CAGradientLayer layer];
  
  gradientLayer.frame = bounds;
  gradientLayer.colors = @[(__bridge id)leftCorlor.CGColor, (__bridge id)rightColor.CGColor];
  
  gradientLayer.startPoint = CGPointMake(0, 0);
  gradientLayer.endPoint = CGPointMake(1.0, 0);
  
  [view.layer insertSublayer:gradientLayer atIndex:0];
}

@end
