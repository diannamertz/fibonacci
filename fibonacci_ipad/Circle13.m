//
//  Circle13.m
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 2/22/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "Circle13.h"

@implementation Circle13
{
    C4Shape *transCircle13;
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
    transCircle13 = [C4Shape ellipse:CGRectMake(0,0,100,100)];
    transCircle13.fillColor = COLORTRANS;
    transCircle13.strokeColor = COLORTRANS;
}

-(void)drawRect:(CGRect)rect
{
    [self addShape:transCircle13];
}

-(void)tapCircleThirteen
{
    [self.circle13Delegate circle13Tapped];
    [self.salmonCircleDelegate salmonCircleShow];
}

@end
