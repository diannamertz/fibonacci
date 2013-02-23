//
//  C4WorkSpace.h
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 1/4/13.
//

/** The C4WorkSpace class is a subclass of C4CanvasController.
 
 The purpose of this class is to provide a simplified interface into which a programmer will build their applications.
 
 Instead of seeing the guts of the C4CanvasController file, C4WorkSpace.m is a much cleaner implementation.
 
 @warning See C4CanvasController for a full list of functionality available in C4WorkSpace.
 */

#import "Squares.h"
#import "Intro.h"
#import "Seed.h"
#import "Constants.h"
#import "Circle8.h"
#import "Circle13.h"
#import "BackgroundCircle.h"

@interface C4WorkSpace : C4CanvasController <SquaresDelegate, IntroDelegate>

@end
