//
//  UIColor+Utility.m
//  ColorTool
//
//  Created by 郭枫 on 2017/11/1.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "UIColor+Utility.h"

@implementation UIColor (Utility)

+ (instancetype)colorWithHexString:(NSString *)hexString {
  return [self colorWithHexString:hexString alpha:1.f];
}

+ (instancetype)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
  unsigned int hexint = 0;
  NSScanner *scanner = [NSScanner scannerWithString:hexString];
  
  [scanner setCharactersToBeSkipped:[NSCharacterSet
                                     characterSetWithCharactersInString:@"#"]];
  [scanner scanHexInt:&hexint];
  
  UIColor *color =
  [UIColor colorWithRed:((CGFloat) ((hexint & 0xFF0000) >> 16))/255
                  green:((CGFloat) ((hexint & 0xFF00) >> 8))/255
                   blue:((CGFloat) (hexint & 0xFF))/255
                  alpha:alpha];
  
  return color;
}

@end
