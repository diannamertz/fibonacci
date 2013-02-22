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
    NSMutableArray *filtered, *filtered2;
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
    CGPoint center;
    center.x = self.center.x;
    center.y = self.center.y;
    center.x = self.width/2;
    center.y = self.height/2;
    
    cone = [[C4Shape alloc] initWithFrame:CGRectMake(0, 0, 21*XSQ, 13*XSQ)];
    cone.center = center;
    
    [self makeSeed];
}

-(void)drawRect:(CGRect)rect
{
    [self addShape:cone];
}

-(void)makeSeed
{
    /*
    //define the meristem
    meristem = [C4Shape ellipse:CGRectMake(0,0,40,40)];
    
    //set the color for the meristem
    meristem.fillColor = COLORGREY;
    meristem.strokeColor = COLORSALMON;
    */
    
    //seeds
    filtered = [[NSMutableArray alloc] init];
    filtered2 = [[NSMutableArray alloc] init];
    int n;
    for(n = 144; n > 0; n--) {
        
        float r = sqrt(n);
        float t = 137.5*PI/180*n;
        seedArcCenter.x = ((21*XSQ)/2) + r*sin(t)*.09*n;
        seedArcCenter.y = ((13*XSQ)/2) + r*cos(t)*.09*n;
        
        //define the seed
        seed = [[C4Shape alloc] initWithFrame:CGRectMake(((seedArcCenter.x)-4*r), ((seedArcCenter.y)-4*r), 4*r, 4*r)];
        [seed arcWithCenter:seedArcCenter radius:4*r startAngle:0 endAngle:2*PI clockwise:NO];
                
        //set the color for the seeds
        seed.fillColor = COLORGREY;
        seed.strokeColor = COLORSALMON;
        
        if (n % 2) {
            [filtered2 addObject:seed];
        }
        
        if (!(n % 13)) {
            [filtered addObject:seed];
        }
        
        if (!((n+3) % 13)) {
            [filtered addObject:seed];
        }
        
        if (!((n+6) % 13)) {
            [filtered addObject:seed];
        }
        
        if (!((n+9) % 13)) {
            [filtered addObject:seed];
        }
        
        if (!((n+12) % 13)) {
            [filtered addObject:seed];
        }
        
        if (!((n+15) % 13)) {
            [filtered addObject:seed];
        }

        [cone addShape:seed];
        
        //center the meristem
        //meristem.center = seedArcCenter;
        //[cone addShape:meristem];
    }
}

-(void)tapPinecone
{
    //[self setup];
    C4Log(@"tapPinecone working");
}

-(void)circle8Tapped
{
    C4Log(@"circle8Tapped");
    for (seed in filtered) {
        seed.fillColor = COLORTEAL;
    }
}

-(void)circle13Tapped
{
    C4Log(@"circle13Tapped");
    for (seed in filtered2) {
        seed.fillColor = COLORWHITE;
    } 
}


@end
