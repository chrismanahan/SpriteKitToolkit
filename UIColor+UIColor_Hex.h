//
//  UIColor+UIColor_Hex.h
//  DroneRunner
//
//  Created by Chris Manahan on 2/13/14.
//  Copyright (c) 2014 Chris Manahan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (UIColor_Hex)

/**
 @abstract Creates a color from a hex value
 @discussion An example of a hex value for the color black would be 0x000000. If you're unfamiliar with hex colors, it's in the format of 0x[RR][GG][BB] where RR, GG, and BB are a hex value from 0 to 255 (00->FF) of the amount of red, green, and blue, respectively
 @param hex Hex value for color
 @return UIColor from the hex value
 */
+(UIColor*)colorFromHex:(uint32_t)hex;

/**
 @abstract Creates a color from a hex value
 @discussion An example of a hex value for the color black would be 0x000000. If you're unfamiliar with hex colors, it's in the format of 0x[RR][GG][BB] where RR, GG, and BB are a hex value from 0 to 255 (00->FF) of the amount of red, green, and blue, respectively
 @param hex     Hex value for color
 @param alpha   Transparency of color
 @return UIColor from the hex value
 */
+(UIColor*)colorFromHex:(uint32_t)hex alpha:(CGFloat)alpha;

@end
