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
    C4Shape *introBackground;
    C4Label *label;
}

-(void)setup
{
    //Create a rectangle
    introBackground = [C4Shape rect:CGRectMake(0, 0, 8*XSQ, 13*XSQ)];
    introBackground.strokeColor = COLORSALMON;
    introBackground.fillColor = COLORGREY;
    CGPoint center;
    center.x = self.center.x;
    center.y = self.center.y;
    
    center.y = self.height/2;
    center.x = self.width/2;
    introBackground.center = center;
    
    //create an initial font and a label
    C4Font *font = [C4Font fontWithName:@"HelveticaNeue-Bold" size:60.0f];
    
    label = [C4Label labelWithText:@"The Fibonacci Sequence" font:font frame:introBackground.frame];
    label.textColor = COLORWHITE;
    label.transform = CGAffineTransformMakeRotation( -M_PI/2);
    label.numberOfLines = 3;
    label.textAlignment = ALIGNTEXTCENTER;
    
    CGPoint labelCenter;
    labelCenter.x = self.center.x;
    labelCenter.y = self.center.y;
    
    labelCenter.y = (self.height/2);
    labelCenter.x = (self.width/2);
    label.center = labelCenter;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self !=nil) {
        [self setup];
        [self rect:frame];
    }
    return self;
}

-(void)drawRect:(CGRect)rect
{
    [self addShape:introBackground];
    [self addLabel:label];
}

-(void)endIntro
{
    introBackground.animationDuration = 0.5f;
    self.animationOptions = AUTOREVERSE | REPEAT;
    introBackground.fillColor = COLORWHITE;
    introBackground.strokeColor = COLORWHITE;
    
    [self runMethod:@"endIntro2" afterDelay:2.0f];
    
}

-(void)endIntro2
{
    [label removeFromSuperview];
    [self.introDelegate startEightSquares];
}

@end
