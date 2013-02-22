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
    C4Shape *localCircle13;
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
    localCircle13 = [C4Shape ellipse:CGRectMake(0,0,100,100)];
    localCircle13.fillColor = COLORSALMON;
    localCircle13.strokeColor = COLORGREY;
    
}

-(void)drawRect:(CGRect)rect
{
    [self addShape:localCircle13];
}

-(void)tapCircleThirteen
{
    C4Log(@"hi circle13");
    [self.circle13Delegate circle13Tapped];
}

@end
