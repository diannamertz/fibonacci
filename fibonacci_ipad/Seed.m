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
    UIColor *color1, *color2, *color3, *color4, *color5, *color6, *color7;
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
    //define colors
    color1 = [UIColor colorWithRed:RGBToFloat(208) green:RGBToFloat(45) blue:RGBToFloat(48) alpha:RGBToFloat(255)];
    color2 = [UIColor colorWithRed:RGBToFloat(210) green:RGBToFloat(140) blue:RGBToFloat(132) alpha:RGBToFloat(255)];
    color3 = [UIColor colorWithRed:RGBToFloat(214) green:RGBToFloat(183) blue:RGBToFloat(178) alpha:RGBToFloat(255)];
    color4 = [UIColor colorWithRed:RGBToFloat(210) green:RGBToFloat(140) blue:RGBToFloat(132) alpha:RGBToFloat(255)];
    color5 = [UIColor colorWithRed:RGBToFloat(191) green:RGBToFloat(187) blue:RGBToFloat(155) alpha:RGBToFloat(255)];
    color6 = [UIColor colorWithRed:RGBToFloat(178) green:RGBToFloat(145) blue:RGBToFloat(138) alpha:RGBToFloat(255)];
    color7 = [UIColor colorWithRed:RGBToFloat(255) green:RGBToFloat(255) blue:RGBToFloat(255) alpha:RGBToFloat(255)];

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
    meristem.fillColor = color6;
    meristem.strokeColor = color3;
    
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
    seed.fillColor = color3;
    C4Log(@"Seed");
}
 

@end
