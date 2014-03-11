//
//  NSArray+Frames.h
//  FloppyBunny
//
//  Created by Chris Manahan on 2/14/14.
//  Copyright (c) 2014 Chris Manahan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Frames)

/** @abstract  Creates an array of SKTextures that can be used to create an animation
 @discussion This method assumes your animation images are named in the format of imageName_0.png, imageName_1.png, ..., imageName_N-1.png
 @param name    Prefix of animation images' name without the underscore
 @param frames  Number of frames in the animation. The last frame should be this value - 1 as the suffix
 @return Array of SKTextures
 */
+(NSArray*)animationArray:(NSString*)name withFrames:(int16_t)frames;

@end
