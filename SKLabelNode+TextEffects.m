//
//  SKLabelNode+TextEffects.m
//  FloppyBunny
//
//  Created by Chris Manahan on 3/10/14.
//  Copyright (c) 2014 Chris Manahan. All rights reserved.
//

#import "SKLabelNode+TextEffects.h"
#import "Constants.h"

@implementation SKLabelNode (TextEffects)

+(SKLabelNode*)shadowedLabelWithText:(NSString*)text
                                name:(NSString*)name
                               color:(UIColor*)color
                                size:(CGFloat)size
                                font:(NSString*)fontName
                               align:(SKLabelHorizontalAlignmentMode)align
{
    SKLabelNode* label = [[SKLabelNode alloc] initWithFontNamed:fontName];
    [label setName:name];
    [label setFontColor:color];
    [label setFontSize:size];
    [label setText:text];
    [label setHorizontalAlignmentMode:align];
    
    // highscore background
    SKLabelNode* bgLabel = [label copy];
    [bgLabel setFontSize:size+1];
    [bgLabel setFontColor:[UIColor blackColor]];
    [bgLabel setZPosition:-1];
    if (align)
    {
        [bgLabel setHorizontalAlignmentMode:align];
    }

    [label addChild:bgLabel];
    return label;
}

+(SKSpriteNode*)multiLinedLabelWithText:(NSString*)text
                               fontname:(NSString*)fontname
                              fontcolor:(UIColor*)fontColor
                               fontsize:(CGFloat)fontSize
                         verticalMargin:(CGFloat)verticalMargin emptylineheight:(CGFloat)emptyLineHeight
{
    NSArray* strings = [text componentsSeparatedByString:@"\n"];
    //DLog(@"string count: %lu", (unsigned long)strings.count);
    
    UIColor* color = UIColor.clearColor;
    
    SKSpriteNode* spritenode = [SKSpriteNode spriteNodeWithColor:color size:CGSizeMake(0, 0)];
    
    CGFloat totalheight = 0;
    CGFloat maxwidth = 0;
    
    NSMutableArray* labels = [NSMutableArray array];
    for (NSUInteger i = 0; i < strings.count; i++) {
        NSString* str = [strings objectAtIndex:i];
        const BOOL ISEMPTYLINE = [str isEqualToString:@""];
        
        if (!ISEMPTYLINE) {
            SKLabelNode* label = [SKLabelNode labelNodeWithFontNamed:fontname];
            label.text = str;
            label.fontColor = fontColor;
            label.fontSize = fontSize;
            
            const CGSize SIZEOFLABEL = [label calculateAccumulatedFrame].size;
            if (SIZEOFLABEL.width > maxwidth)
                maxwidth = SIZEOFLABEL.width;
            totalheight += SIZEOFLABEL.height;
            [labels addObject:label];
        }
        else {
            totalheight += emptyLineHeight;
            [labels addObject:[NSNull null]];
        }
        if (i + 1 < strings.count)
            totalheight += verticalMargin;
    }
    spritenode.size = CGSizeMake(maxwidth, totalheight);
    
    //DLog(@"spritenode total size: %@", NSStringFromSize(spritenode.size));
    CGFloat y = spritenode.size.height * 0.5;
    const CGFloat X = 0;
    for (NSUInteger i = 0; i < strings.count; i++) {
        id obj = [labels objectAtIndex:i];
        if ([obj isKindOfClass:SKLabelNode.class]) {
            SKLabelNode* label = obj;
            label.verticalAlignmentMode = SKLabelVerticalAlignmentModeTop;
            label.position = ccp(X, y);
            [spritenode addChild:label];
            const CGSize SIZEOFLABEL = [label calculateAccumulatedFrame].size;
            y -= SIZEOFLABEL.height;
        }
        else {
            y -= emptyLineHeight;
        }
        if (i + 1 < labels.count)
            y -= verticalMargin;
    }
    
    return spritenode;
}


@end
