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
    C4Shape *introBackground;
}

-(void)setup
{
    CGPoint center;
    center.x = self.center.x;
    center.y = self.center.y;
    center.x = self.width/2;
    center.y = self.height/2;

    introBackground = [C4Shape rect:CGRectMake(0, 0, self.width, self.height)];
    introBackground.strokeColor = COLORTRANS;
    introBackground.fillColor = COLORBLACKTRANS;
    introBackground.center = center;
    
    //create an initial font and a label
    C4Font *font = [C4Font fontWithName:@"Futura" size:60.0f];
    
    label = [C4Label labelWithText:@"THE FIBONACCI SEQUENCE" font:font frame:introBackground.frame];
    label.textColor = COLORSALMON;
    label.numberOfLines = 3;
    label.textAlignment = ALIGNTEXTCENTER;
    
    label.center = center;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self !=nil) {
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
    introBackground.fillColor = COLORTRANS;
    introBackground.strokeColor = COLORTRANS;
    
    label.animationDuration = 0.5f;
    self.animationOptions = AUTOREVERSE | REPEAT;
    label.textColor = COLORTRANS;
    label.textColor = COLORTRANS;
    
    [self runMethod:@"endIntro2" afterDelay:0.5f];
}

-(void)endIntro2
{
    [label removeFromSuperview];
    [self.introDelegate startThirteenSquares];
}

@end
