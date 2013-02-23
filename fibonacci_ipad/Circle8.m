//
//  Circle8.m
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 2/22/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "Circle8.h"

@implementation Circle8
{
    C4Shape *localCircle8;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self rect:frame];
    }
    return self;
}

-(void)setup
{
    localCircle8 = [C4Shape ellipse:CGRectMake(0,0,100,100)];
    localCircle8.fillColor = COLORTRANS;
    localCircle8.strokeColor = COLORTEAL;
}

-(void)drawRect:(CGRect)rect
{
    [self addShape:localCircle8];
}

-(void)tapCircleEight
{
    [self.circle8Delegate circle8Tapped];
    [self.tealCircleDelegate tealCircleShow];
}

@end
