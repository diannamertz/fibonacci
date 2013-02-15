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

-(void)setup
{
    int x = 75;
    
    //Create a rectangle
    introBackground = [C4Shape rect:CGRectMake(0, 0, 8*x, 13*x)];
    introBackground.strokeColor = [UIColor blackColor];
    introBackground.fillColor = [UIColor blackColor];
    
    CGPoint center;
    center.x = self.center.x;
    center.y = self.center.y;
    
    center.y = self.height/2;
    center.x = self.width/2;
    introBackground.center = center;
    
    [self addShape:introBackground];
    
    //create an initial font and a label
    C4Font *font = [C4Font fontWithName:@"helvetica" size:120.0f];
    
    C4Label *label = [C4Label labelWithText:@"The Fibonacci Sequence" font:font frame:introBackground.frame];
    label.textColor = [UIColor colorWithRed:RGBToFloat(210) green:RGBToFloat(140) blue:RGBToFloat(132) alpha:RGBToFloat(255)];
    label.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    CGPoint labelCenter;
    labelCenter.x = self.center.x;
    labelCenter.y = self.center.y;
    
    labelCenter.y = (self.height/2);
    labelCenter.x = (self.width/2);
    label.center = labelCenter;
    label.numberOfLines = 3;
    
    [self addLabel:label];
}

-(void)endIntro
{
    C4Log(@"end intro");
    [self removeFromSuperview];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
