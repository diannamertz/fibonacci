//
//  Seed.m
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 1/22/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "Seed.h"

@implementation Seed
{
    CGPoint seedArcCenter;
    C4Shape *seed, *cone;
    UIColor *color1, *color2, *color3, *color4, *color5, *color6, *color7;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self ellipse:frame];
    }
    return self;
}

-(void)setup
{
    //define colors
    color1 = [UIColor colorWithRed:0.9725f green:0.9294f blue:0.8039f alpha:1.0f];
    color2 = [UIColor colorWithRed:0.8941f green:0.8863f blue:0.7882f alpha:1.0f];
    color3 = [UIColor colorWithRed:0.7294f green:0.7764f blue:0.6902f alpha:1.0f];
    color4 = [UIColor colorWithRed:0.3569f green:0.2235f blue:0.1882f alpha:1.0f];
    color5 = [UIColor colorWithRed:0.4902f green:0.4157f blue:0.4f alpha:1.0f];
    color6 = [UIColor colorWithRed:0.8118f green:0.8314f blue:0.7373f alpha:1.0f];
    color7 = [UIColor colorWithRed:0.7333f green:0.6902f blue:0.6627f alpha:1.0f];
    
    
    
    //define the meristem
    C4Shape *meristem;
    meristem = [C4Shape ellipse:CGRectMake(0,0,100,100)];

    //set the color for the meristem
    meristem.fillColor = color1;
    meristem.strokeColor = color4;
    
    //center the meristem
    //_meristem.center = self.center;
    
    cone = [[C4Shape alloc] initWithFrame:CGRectMake(0,0,400,400)];
    
    [self makeSeed];
    
    /*
    //seeds
    int n;
    for(n = 144; n > 0; n--) {
        
        float r = sqrt(n);
        float t = 137.5*PI/180*n;
        seedArcCenter.x = 200 + r*sin(t)*.09*n;
        seedArcCenter.y = 200 + r*cos(t)*.09*n;
        
        //define the seed
        seed = [[C4Shape alloc] initWithFrame:CGRectMake(((seedArcCenter.x)-4*r), ((seedArcCenter.y)-4*r), 4*r, 4*r)];
        
        [seed arcWithCenter:seedArcCenter radius:4*r startAngle:0 endAngle:2*PI clockwise:NO];
        
        [seed addGesture:TAP name:@"tapGesture" action:@"updateControl5"];
        
        //set the color for the seeds
        seed.fillColor = color7;
        seed.strokeColor = color5;
        
        [cone.self addShape:seed];
    }
     */
    //[cone.self addShape:meristem];
    
}

-(void)drawRect:(CGRect)rect
{
    [self addShape:cone];
}
/*
-(void)tapSpiral
{
    int s;
    for(s=1; s>4;s++) {
        if ((n+s) % 8) {
            _seed.fillColor = _color2;
        }
    }
}
 */

-(void)updateControl5
{
    self.fillColor = [UIColor cyanColor];
    [self setup];
    C4Log(@"Seed");
}

-(void)makeSeed
{
    //seeds
    int n;
    for(n = 144; n > 0; n--) {
        
        float r = sqrt(n);
        float t = 137.5*PI/180*n;
        seedArcCenter.x = 200 + r*sin(t)*.09*n;
        seedArcCenter.y = 200 + r*cos(t)*.09*n;
        
        //define the seed
        seed = [[C4Shape alloc] initWithFrame:CGRectMake(((seedArcCenter.x)-4*r), ((seedArcCenter.y)-4*r), 4*r, 4*r)];
        
        [seed arcWithCenter:seedArcCenter radius:4*r startAngle:0 endAngle:2*PI clockwise:NO];
        
        [seed addGesture:TAP name:@"tapGesture" action:@"updateControl5"];
        
        //set the color for the seeds
        seed.fillColor = color7;
        seed.strokeColor = color5;
        
        [cone.self addShape:seed];
        
    }
}

@end
