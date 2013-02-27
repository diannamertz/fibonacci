//
//  Intro.m
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 2/14/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "Intro.h"

@implementation Intro
{
    C4Label *label;
}

-(void)setup
{
    CGPoint center;
    center.x = self.center.x;
    center.y = self.center.y;
    center.x = self.width/2;
    center.y = self.height/2;
    
    //create an initial font and a label
    C4Font *font = [C4Font fontWithName:@"HelveticaNeue-Bold" size:60.0f];
    
    label = [C4Label labelWithText:@"The Fibonacci Sequence" font:font];
    label.textColor = COLORSALMON;
    label.numberOfLines = 3;
    label.textAlignment = ALIGNTEXTCENTER;
    
    label.center = center;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self !=nil) {
        //[self setup];
        [self rect:frame];
    }
    return self;
}

-(void)drawRect:(CGRect)rect
{
    [self addLabel:label];
}

-(void)endIntro
{
    label.animationDuration = 0.5f;
    self.animationOptions = AUTOREVERSE | REPEAT;
    label.textColor = COLORTRANS;
    label.textColor = COLORTRANS;
    
    [self runMethod:@"endIntro2" afterDelay:1.0f];
}

-(void)endIntro2
{
    [label removeFromSuperview];
    [self.introDelegate startThirteenSquares];
}

@end
