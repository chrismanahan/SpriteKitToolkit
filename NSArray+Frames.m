//
//  NSArray+Frames.m
//  FloppyBunny
//
//  Created by Chris Manahan on 2/14/14.
//  Copyright (c) 2014 Chris Manahan. All rights reserved.
//

#import "NSArray+Frames.h"
#import <SpriteKit/SpriteKit.h>

@implementation NSArray (Frames)

+(NSArray*)animationArray:(NSString*)name withFrames:(int16_t)frames;
{
    NSMutableArray* images = [[NSMutableArray alloc] initWithCapacity: frames];
    for (int16_t i = 0; i < frames; i++)
    {
        NSString* fileName = [NSString stringWithFormat: @"%@_%i", name, i];
        SKTexture* img = [SKTexture textureWithImageNamed: fileName];
        [images addObject: img];
    }
    
    return (NSArray*)images;
}

@end
