//
//  SKLabelNode+TextEffects.h
//
//  Created by Chris Manahan on 3/10/14.
//  Copyright (c) 2014 Chris Manahan. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SKLabelNode (TextEffects)

/**
 @abstract Creates a label with a shadow effect
 @param text    Text to be displayed in the label
 @param name    Name assigned to node
 @param color   Color of foreground text
 @param size    Font size
 @param align   Horizontal alignment of text. Centered by default
 @return SKLabelNode of text with background shadow
 */
+(SKLabelNode*)shadowedLabelWithText:(NSString*)text
                               name:(NSString*)name
                              color:(UIColor*)color
                               size:(CGFloat)size
                                font:(NSString*)fontName
                               align:(SKLabelHorizontalAlignmentMode)align;

/**
 @abstract Creates a multilined label
 @discussion To create seperate lines in your label, just pass in newline characters in your text string. This method will do the rest
 @param text        Text to be displayed in the label
 @param fontColor   Color of text
 @param fontSize    Size of font
 @param verticalMargin  Vertical margin
 @param emptyLineHeight Padding of text
 @return SKSpriteNode with multilined label
 */
+(SKSpriteNode*)multiLinedLabelWithText:(NSString*)text
                               fontname:(NSString*)fontname
                              fontcolor:(UIColor*)fontColor
                               fontsize:(CGFloat)fontSize
                         verticalMargin:(CGFloat)verticalMargin
                        emptylineheight:(CGFloat)emptyLineHeight;

@end
