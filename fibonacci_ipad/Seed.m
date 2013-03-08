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
    NSMutableArray *filtered0, *filtered1, *filtered2, *filteredSalmonArray0, *filteredSalmonArray1, *filteredSalmonArray2, *filteredSalmonArray3, *filteredSalmonArray4, *filteredSalmonArray5, *filteredSalmonArray6, *filteredSalmonArray7, *filteredSalmonArray8, *filteredSalmonArray9, *filteredSalmonArray10, *filteredSalmonArray11, *filteredSalmonArray12, *filteredTealArray1, *filteredTealArray2, *filteredTealArray3, *filteredTealArray4, *filteredTealArray5, *filteredTealArray6, *filteredTealArray7, *filteredTealArray8;
    NSArray *revS0, *revS1, *revS2,*revS3,*revS4,*revS5,*revS6,*revS7,*revS8,*revS9,*revS10,*revS11, *revS12, *allRevS;
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
    //seeds
    filtered0 = [[NSMutableArray alloc] init];
    filtered1 = [[NSMutableArray alloc] init];
    filtered2 = [[NSMutableArray alloc] init];
    filteredTealArray1 = [[NSMutableArray alloc] init];
    filteredTealArray2 = [[NSMutableArray alloc] init];
    filteredTealArray3 = [[NSMutableArray alloc] init];
    filteredTealArray4 = [[NSMutableArray alloc] init];
    filteredTealArray5 = [[NSMutableArray alloc] init];
    filteredTealArray6 = [[NSMutableArray alloc] init];
    filteredTealArray7 = [[NSMutableArray alloc] init];
    filteredTealArray8 = [[NSMutableArray alloc] init];
    filteredSalmonArray0 = [[NSMutableArray alloc] init];
    filteredSalmonArray1 = [[NSMutableArray alloc] init];
    filteredSalmonArray2 = [[NSMutableArray alloc] init];
    filteredSalmonArray3 = [[NSMutableArray alloc] init];
    filteredSalmonArray4 = [[NSMutableArray alloc] init];
    filteredSalmonArray5 = [[NSMutableArray alloc] init];
    filteredSalmonArray6 = [[NSMutableArray alloc] init];
    filteredSalmonArray7 = [[NSMutableArray alloc] init];
    filteredSalmonArray8 = [[NSMutableArray alloc] init];
    filteredSalmonArray9 = [[NSMutableArray alloc] init];
    filteredSalmonArray10 = [[NSMutableArray alloc] init];
    filteredSalmonArray11 = [[NSMutableArray alloc] init];
    filteredSalmonArray12 = [[NSMutableArray alloc] init];
    
    int n;
    for(n = 144; n > 0; n--)
    {
        float r = sqrt(n);
        float t = 137.5*PI/180*n;
        seedArcCenter.x = ((21*XSQ)/2) + r*sin(t)*.09*n;
        seedArcCenter.y = ((13*XSQ)/2) + r*cos(t)*.09*n;
        
        //define the seed
        seed = [[C4Shape alloc] initWithFrame:CGRectMake(((seedArcCenter.x)-4*r), ((seedArcCenter.y)-4*r), 4*r, 4*r)];
        [seed arcWithCenter:seedArcCenter radius:4*r startAngle:0 endAngle:2*PI clockwise:NO];
        
        //set the color for the seeds
        seed.fillColor = COLORTRANS;
        seed.strokeColor = COLORTRANS;
        
        if (n) {
            [filtered0 addObject:seed];
        }
        if (n % 2) {
            [filtered1 addObject:seed];
        }
        if (!((n) % 2)) {
            [filtered2 addObject:seed];
        }
        if (!((n+0) % 8)) {
            [filteredTealArray1 addObject:seed];
        }
        if (!((n+1) % 8)) {
            [filteredTealArray2 addObject:seed];
        }
        if (!((n+2) % 8)) {
            [filteredTealArray3 addObject:seed];
        }
        if (!((n+3) % 8)) {
            [filteredTealArray4 addObject:seed];
        }
        if (!((n+4) % 8)) {
            [filteredTealArray5 addObject:seed];
        }
        if (!((n+5) % 8)) {
            [filteredTealArray6 addObject:seed];
        }
        if (!((n+6) % 8)) {
            [filteredTealArray7 addObject:seed];
        }
        if (!((n+7) % 8)) {
            [filteredTealArray8 addObject:seed];
        }
        if (!((n+0) % 13)) {
            [filteredSalmonArray0 addObject:seed];
        }
        if (!((n+1) % 13)) {
            [filteredSalmonArray1 addObject:seed];
        }
        if (!((n+2) % 13)) {
            [filteredSalmonArray2 addObject:seed];
        }
        if (!((n+3) % 13)) {
            [filteredSalmonArray3 addObject:seed];
        }
        if (!((n+4) % 13)) {
            [filteredSalmonArray4 addObject:seed];
        }
        if (!((n+5) % 13)) {
            [filteredSalmonArray5 addObject:seed];
        }
        if (!((n+6) % 13)) {
            [filteredSalmonArray6 addObject:seed];
        }
        if (!((n+7) % 13)) {
            [filteredSalmonArray7 addObject:seed];
        }
        if (!((n+8) % 13)) {
            [filteredSalmonArray8 addObject:seed];
        }
        if (!((n+9) % 13)) {
            [filteredSalmonArray9 addObject:seed];
        }
        if (!((n+10) % 13)) {
            [filteredSalmonArray10 addObject:seed];
        }
        if (!((n+11) % 13)) {
            [filteredSalmonArray11 addObject:seed];
        }
        if (!((n+12) % 13)) {
            [filteredSalmonArray12 addObject:seed];
        }
    [cone addShape:seed];
        
    revS0 = [[filteredSalmonArray0 reverseObjectEnumerator] allObjects];
    revS1 = [[filteredSalmonArray1 reverseObjectEnumerator] allObjects];
    revS2 = [[filteredSalmonArray2 reverseObjectEnumerator] allObjects];
    revS3 = [[filteredSalmonArray3 reverseObjectEnumerator] allObjects];
    revS4 = [[filteredSalmonArray4 reverseObjectEnumerator] allObjects];
    revS5 = [[filteredSalmonArray5 reverseObjectEnumerator] allObjects];
    revS6 = [[filteredSalmonArray6 reverseObjectEnumerator] allObjects];
    revS7 = [[filteredSalmonArray7 reverseObjectEnumerator] allObjects];
    revS8 = [[filteredSalmonArray8 reverseObjectEnumerator] allObjects];
    revS9 = [[filteredSalmonArray9 reverseObjectEnumerator] allObjects];
    revS10 = [[filteredSalmonArray10 reverseObjectEnumerator] allObjects];
    revS11 = [[filteredSalmonArray11 reverseObjectEnumerator] allObjects];
    revS12 = [[filteredSalmonArray12 reverseObjectEnumerator] allObjects];
    allRevS = [[NSMutableArray alloc] initWithObjects:filteredSalmonArray0, filteredSalmonArray1, filteredSalmonArray2, filteredSalmonArray3, filteredSalmonArray4, filteredSalmonArray5, filteredSalmonArray6, filteredSalmonArray7, filteredSalmonArray8, filteredSalmonArray9, filteredSalmonArray10, filteredSalmonArray11, filteredSalmonArray12, nil];
    }
    [self seedBeginning];
}

-(void)seedBeginning
{
    for (seed in filtered0)
    {
        seed.animationDuration = 2.0f;
        seed.fillColor = COLORWHITE;
        seed.strokeColor = COLORGREY;
    }
}
 
-(void)swipePinecone
{
    [self.startoverDelegate restart];
}

-(void)circle8Tapped
{
    /*    
    for (seed in filtered2) {
        seed.animationDuration = 2.0f;
        seed.fillColor = COLORTEAL;
    }
    */
    
    for (seed in filteredTealArray1) {
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(0) green:RGBToFloat(174) blue:RGBToFloat(150) alpha:RGBToFloat(255)];
    }
    for (seed in filteredTealArray2) {
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(31) green:RGBToFloat(182) blue:RGBToFloat(161) alpha:RGBToFloat(255)];
    }
    for (seed in filteredTealArray3) {
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(62) green:RGBToFloat(190) blue:RGBToFloat(172) alpha:RGBToFloat(255)];
    }
    for (seed in filteredTealArray4) {
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(93) green:RGBToFloat(198) blue:RGBToFloat(183) alpha:RGBToFloat(255)];
    }
    for (seed in filteredTealArray5) {
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(124) green:RGBToFloat(206) blue:RGBToFloat(194) alpha:RGBToFloat(255)];
    }
    for (seed in filteredTealArray6) {
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(155) green:RGBToFloat(214) blue:RGBToFloat(205) alpha:RGBToFloat(255)];
    }
    for (seed in filteredTealArray7) {
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(186) green:RGBToFloat(222) blue:RGBToFloat(216) alpha:RGBToFloat(255)];
    }
    for (seed in filteredTealArray8) {
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(218) green:RGBToFloat(231) blue:RGBToFloat(227) alpha:RGBToFloat(255)];
    }
     
}

-(void)circle13Tapped
{
    //8
    for (seed in revS8) {
        
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(246) green:RGBToFloat(145) blue:RGBToFloat(145) alpha:RGBToFloat(255)];
    }
    //13
    for (seed in revS0) {
        
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(242) green:RGBToFloat(80) blue:RGBToFloat(80) alpha:RGBToFloat(255)];
    }
    //5
    for (seed in revS5) {
        
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(249) green:RGBToFloat(184) blue:RGBToFloat(184) alpha:RGBToFloat(255)];
    }
    //10
    for (seed in revS10) {
        
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(244) green:RGBToFloat(119) blue:RGBToFloat(119) alpha:RGBToFloat(255)];
    }
    //2
    for (seed in revS2) {
        
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(252) green:RGBToFloat(223) blue:RGBToFloat(223) alpha:RGBToFloat(255)];
    }
    //7
    for (seed in revS7) {
        
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(247) green:RGBToFloat(158) blue:RGBToFloat(158) alpha:RGBToFloat(255)];
    }
    //12
    for (seed in revS12) {
        
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(242) green:RGBToFloat(93) blue:RGBToFloat(93) alpha:RGBToFloat(255)];
    }
    //4
    for (seed in revS4) {
        
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(250) green:RGBToFloat(197) blue:RGBToFloat(197) alpha:RGBToFloat(255)];
    }
    //9
    for (seed in revS9) {
        
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(245) green:RGBToFloat(132) blue:RGBToFloat(132) alpha:RGBToFloat(255)];
    }
    //1
    for (seed in revS1) {
        
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(253) green:RGBToFloat(237) blue:RGBToFloat(237) alpha:RGBToFloat(255)];
    }
    //6
    for (seed in revS6) {
        
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(248) green:RGBToFloat(171) blue:RGBToFloat(171) alpha:RGBToFloat(255)];
    }
    //11
    for (seed in revS11) {
        
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(243) green:RGBToFloat(106) blue:RGBToFloat(106) alpha:RGBToFloat(255)];
    }
    //3
    for (seed in revS3) {
        seed.animationDuration = 2.0f;
        seed.fillColor = [UIColor colorWithRed:RGBToFloat(251) green:RGBToFloat(210) blue:RGBToFloat(210) alpha:RGBToFloat(255)];
    }
}

@end
