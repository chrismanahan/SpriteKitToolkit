//
//  UIColor+UIColor_Hex.m
//  DroneRunner
//
//  Created by Chris Manahan on 2/13/14.
//  Copyright (c) 2014 Chris Manahan. All rights reserved.
//

#import "UIColor+UIColor_Hex.h"

@implementation UIColor (UIColor_Hex)

+(UIColor*)colorFromHex:(uint32_t)hex;
{
    return [UIColor colorFromHex: hex alpha: 1.0];
}

+(UIColor*)colorFromHex:(uint32_t)hex alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:alpha];
}

@end
