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
    C4Shape *seed, *cone, *meristem;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
        [self rect:frame];
    }
    return self;
}

-(void)setup
{
    cone = [[C4Shape alloc] initWithFrame:CGRectMake(0,0,400,400)];
    
    [self makeSeed];
}

-(void)drawRect:(CGRect)rect
{
    [self addShape:cone];
}

-(void)makeSeed
{
    //define the meristem
    meristem = [C4Shape ellipse:CGRectMake(0,0,40,40)];
    
    //set the color for the meristem
    meristem.fillColor = COLORGREY;
    meristem.strokeColor = COLORSALMON;
    
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
        seed.fillColor = COLORGREY;
        seed.strokeColor = COLORTEAL;
        
        if (n % 8) {
            C4Log(@"%@",self);
        }
    
        /*
        int s;
        for(s=1; s>4;s++) {
            if ((n+s) % 8) {
                seed.fillColor = color2;
            }
        }
        */

        [cone.self addShape:seed];

        //center the meristem
        meristem.center = seed.center;
        [cone.self addShape:meristem];
    }
}

-(void)tapPinecone
{
    seed.fillColor = COLORWHITE;
}
 

@end
