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
    C4Shape *whiteCircle, *tealCircle, *tealInnerCircle, *salmonCircle, *salmonInnerCircle, *numberCircle8, *numberCircle13, *numberLabel8;
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
    
    tealInnerCircle = [C4Shape ellipse:CGRectMake(0, 0, 450, 450)];
    tealInnerCircle.center = center;
    tealInnerCircle.fillColor = COLORWHITE;
    tealInnerCircle.strokeColor = COLORTEAL;
    
    numberCircle8 = [C4Shape ellipse:CGRectMake(0,0,525,525)];
    numberCircle8.center = center;
    numberCircle8.fillColor = COLORTRANS;
    numberCircle8.strokeColor = COLORTRANS;
    
    for (NSInteger i=1; i<=8; i++)
    {
        CATextLayer *number = [CATextLayer layer];
        number.string = [NSString stringWithFormat:@"%i",i];
        number.alignmentMode = @"center";
        number.fontSize = 25.0;
        number.foregroundColor = [[UIColor colorWithRed:RGBToFloat(120) green:RGBToFloat(120) blue:RGBToFloat(120) alpha:RGBToFloat(255)]CGColor];;
        number.bounds = CGRectMake(0.0, 0.0, 25.0, numberCircle8.bounds.size.height / 2.0);
        number.position = CGPointMake(CGRectGetMidX(numberCircle8.bounds ), CGRectGetMidY(numberCircle8.bounds));
        number.anchorPoint = CGPointMake(0.5, 1.0);
        number.transform = CATransform3DMakeRotation(((M_PI * 2) / 8.0 * i)+8, 0, 0, 1);
        [numberCircle8.layer addSublayer:number];
    }
    
    salmonCircle = [C4Shape ellipse:CGRectMake(0, 0, 550, 550)];
    salmonCircle.center = center;
    salmonCircle.fillColor = COLORWHITE;
    salmonCircle.strokeColor = COLORSALMON;
    
    salmonInnerCircle = [C4Shape ellipse:CGRectMake(0, 0, 450, 450)];
    salmonInnerCircle.center = center;
    salmonInnerCircle.fillColor = COLORWHITE;
    salmonInnerCircle.strokeColor = COLORSALMON;
    
    numberCircle13 = [C4Shape ellipse:CGRectMake(0,0,525,525)];
    numberCircle13.center = center;
    numberCircle13.fillColor = COLORTRANS;
    numberCircle13.strokeColor = COLORTRANS;
    
    for (NSInteger i=1; i<=13; i++)
    {
        CATextLayer *number = [CATextLayer layer];
        number.string = [NSString stringWithFormat:@"%i",i];
        number.alignmentMode = @"center";
        number.fontSize = 25.0;
        number.foregroundColor = [[UIColor colorWithRed:RGBToFloat(120) green:RGBToFloat(120) blue:RGBToFloat(120) alpha:RGBToFloat(255)]CGColor];;
        number.bounds = CGRectMake(0.0, 0.0, 30.0, numberCircle13.bounds.size.height / 2.0);
        number.position = CGPointMake(CGRectGetMidX(numberCircle13.bounds ), CGRectGetMidY(numberCircle13.bounds));
        number.anchorPoint = CGPointMake(0.5, 1.0);
        number.transform = CATransform3DMakeRotation(((M_PI * 2) / 13.0 * i)+8, 0, 0, 1);
        [numberCircle13.layer addSublayer:number];
    }
    
    [self addShape:whiteCircle];
}

-(void)tealCircleShow
{
    [self addShape:tealCircle];
    [self addShape:numberCircle8];
    [self addShape:tealInnerCircle];
}

-(void)salmonCircleShow
{
    [self addShape:salmonCircle];
    [self addShape:numberCircle13];
    [self addShape:salmonInnerCircle];
}

@end
