//
//  UIView+Color.h
//  ColorTool
//
//  Created by 郭枫 on 2017/11/1.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Color)

- (void)createBackGroundGradientColorLayerWithView:(UIView *)view Bounds:(CGRect)bounds LeftColor:(UIColor *)leftCorlor RightColor:(UIColor *)rightColor;

@end
