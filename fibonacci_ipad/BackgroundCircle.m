//
//  BackgroundCircle.m
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 2/23/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "BackgroundCircle.h"

@implementation BackgroundCircle
{
    C4Shape *whiteCircle, *tealCircle, *salmonCircle;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self ellipse:frame];
    }
    return self;
}

-(void)drawRect:(CGRect)rect
{
    [self addShape:whiteCircle];
}

-(void)setup
{
    CGPoint center;
    center.x = self.center.x;
    center.y = self.center.y;
    center.x = self.width/2;
    center.y = self.height/2;
    
    whiteCircle = [C4Shape ellipse:CGRectMake(0, 0, 550, 550)];
    whiteCircle.center = center;
    whiteCircle.fillColor = COLORTRANS;
    whiteCircle.strokeColor = COLORTRANS;
    
    tealCircle = [C4Shape ellipse:CGRectMake(0, 0, 550, 550)];
    tealCircle.center = center;
    tealCircle.fillColor = COLORWHITE;
    tealCircle.strokeColor = COLORTEAL;
    
    salmonCircle = [C4Shape ellipse:CGRectMake(0, 0, 550, 550)];
    salmonCircle.center = center;
    salmonCircle.fillColor = COLORWHITE;
    salmonCircle.strokeColor = COLORSALMON;
    
    [self addShape:whiteCircle];
}

-(void)tealCircleShow
{
    [self addShape:tealCircle];
    C4Log(@"Wooah tealCircle");
}

-(void)salmonCircleShow
{
    [self addShape:salmonCircle];
    C4Log(@"Wooah salmonCircle");
}




@end
