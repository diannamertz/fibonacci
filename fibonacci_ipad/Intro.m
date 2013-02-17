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
    int x = 75;
    
    //Create a rectangle
    introBackground = [C4Shape rect:CGRectMake(0, 0, 8*x, 13*x)];
    introBackground.strokeColor = [UIColor clearColor];
    introBackground.fillColor = [UIColor colorWithRed:RGBToFloat(0) green:RGBToFloat(0) blue:RGBToFloat(0) alpha:RGBToFloat(50)];
    CGPoint center;
    center.x = self.center.x;
    center.y = self.center.y;
    
    center.y = self.height/2;
    center.x = self.width/2;
    introBackground.center = center;
    
    //create an initial font and a label
    C4Font *font = [C4Font fontWithName:@"HelveticaNeue-Bold" size:60.0f];
    
    label = [C4Label labelWithText:@"The Fibonacci Sequence" font:font frame:introBackground.frame];
    label.textColor = [UIColor colorWithRed:RGBToFloat(210) green:RGBToFloat(140) blue:RGBToFloat(132) alpha:RGBToFloat(255)];
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
    introBackground.animationDuration = 1.0f;
    self.animationOptions = AUTOREVERSE | REPEAT;
    introBackground.fillColor = [UIColor whiteColor];
    introBackground.strokeColor = [UIColor whiteColor];
    
    [self runMethod:@"endIntro2" afterDelay:3.0f];
    
}

-(void)endIntro2
{
    [label removeFromSuperview];
    [self.introDelegate startEightSquares];
}

@end
