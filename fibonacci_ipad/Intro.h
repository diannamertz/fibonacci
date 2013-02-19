//
//  Intro.h
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 2/14/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "C4Shape.h"
#import "Constants.h"
@class Intro;

@protocol IntroDelegate <NSObject>
-(void)startThirteenSquares;
@end

@interface Intro : C4Shape

@property (nonatomic, assign) id<IntroDelegate> introDelegate;

-(void)endIntro;
-(void)endIntro2;
@end
