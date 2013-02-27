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
    C4Shape *transCircle8;
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
    transCircle8 = [C4Shape ellipse:CGRectMake(0,0,100,100)];
    transCircle8.fillColor = COLORTRANS;
    transCircle8.strokeColor = COLORTRANS;
}

-(void)drawRect:(CGRect)rect
{
    [self addShape:transCircle8];
}

-(void)tapCircleEight
{    
    [self.circle8Delegate circle8Tapped];
    [self.tealCircleDelegate tealCircleShow];
}

@end
