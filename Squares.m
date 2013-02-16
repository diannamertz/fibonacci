//
//  Squares.m
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 2/9/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "Squares.h"

@implementation Squares
{
    UIColor *color1, *color2, *color3, *color4, *color5, *color6, *color7;
    C4Shape *allSquares, *square, *square1, *square2, *square3, *square5, *square8;
    C4Label *labelAll;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self !=nil) {
        //[self setup];
        [self rect:frame];
        }
    return self;
}

-(void)setup
{
    //define the squares
    
    //define colors
    color1 = [UIColor colorWithRed:RGBToFloat(208) green:RGBToFloat(45) blue:RGBToFloat(48) alpha:RGBToFloat(255)];
    color2 = [UIColor colorWithRed:RGBToFloat(210) green:RGBToFloat(140) blue:RGBToFloat(132) alpha:RGBToFloat(255)];
    color3 = [UIColor colorWithRed:RGBToFloat(214) green:RGBToFloat(183) blue:RGBToFloat(178) alpha:RGBToFloat(255)];
    color4 = [UIColor colorWithRed:RGBToFloat(210) green:RGBToFloat(140) blue:RGBToFloat(132) alpha:RGBToFloat(255)];
    color5 = [UIColor colorWithRed:RGBToFloat(191) green:RGBToFloat(187) blue:RGBToFloat(155) alpha:RGBToFloat(255)];
    color6 = [UIColor colorWithRed:RGBToFloat(178) green:RGBToFloat(145) blue:RGBToFloat(138) alpha:RGBToFloat(255)];
    color7 = [UIColor colorWithRed:RGBToFloat(255) green:RGBToFloat(255) blue:RGBToFloat(255) alpha:RGBToFloat(255)];
    
    int x = 75;
    
    square = [C4Shape rect:CGRectMake(2*x,((self.height)-3*x),x,-x)];
    square.strokeColor = color2;
    square.fillColor = [UIColor whiteColor];
    
    square1 = [C4Shape rect:CGRectMake(2*x,((self.height)-4*x),x,-x)];
    square1.strokeColor = color2;
    square1.fillColor = [UIColor whiteColor];
    
    square2 = [C4Shape rect:CGRectMake(0,((self.height)-3*x),2*x,-2*x)];
    square2.strokeColor = color2;
    square2.fillColor = [UIColor whiteColor];
    
    square3 = [C4Shape rect:CGRectMake(0,self.height,3*x,-3*x)];
    square3.strokeColor = color2;
    square3.fillColor = [UIColor whiteColor];
    
    square5 = [C4Shape rect:CGRectMake(3*x,self.height,5*x,-5*x)];
    square5.strokeColor = color2;
    square5.fillColor = [UIColor whiteColor];
    
    square8 = [C4Shape rect:CGRectMake(0,((self.height)-5*x),8*x,-8*x)];
    square8.strokeColor = color2;
    square8.fillColor = [UIColor whiteColor];
    
    //square text
    
    C4Font *squaresFont = [C4Font fontWithName:@"AmericanTypewriter" size:30.0f];
    
    C4Label *label = [C4Label labelWithText:@"1" font:squaresFont];
    label.center = square.center;
    label.textColor = color5;
    label.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    C4Label *label1 = [C4Label labelWithText:@"1" font:squaresFont];
    label1.center = square1.center;
    label1.textColor = color5;
    label1.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    C4Label *label2 = [C4Label labelWithText:@"2" font:squaresFont];
    label2.center = square2.center;
    label2.textColor = color5;
    label2.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    C4Label *label3 = [C4Label labelWithText:@"3" font:squaresFont];
    label3.center = square3.center;
    label3.textColor = color5;
    label3.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    C4Label *label5 = [C4Label labelWithText:@"5" font:squaresFont];
    label5.center = square5.center;
    label5.textColor = color5;
    label5.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    C4Label *label8 = [C4Label labelWithText:@"8" font:squaresFont];
    label8.center = square8.center;
    label8.textColor = color5;
    label8.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    //place the squares
    allSquares = [C4Shape rect:CGRectMake(0,0,(8*x),(13*x))];
    allSquares.fillColor = [UIColor clearColor];
    allSquares.strokeColor = [UIColor clearColor];
    
    [allSquares.self addShape:square];
    [allSquares.self addShape:square1];
    [allSquares.self addShape:square2];
    [allSquares.self addShape:square3];
    [allSquares.self addShape:square5];
    [allSquares.self addShape:square8];
    [allSquares.self addLabel:label];
    [allSquares.self addLabel:label1];
    [allSquares.self addLabel:label2];
    [allSquares.self addLabel:label3];
    [allSquares.self addLabel:label5];
    [allSquares.self addLabel:label8];
}

- (void)drawRect:(CGRect)rect
{
    [self addShape:allSquares];
}

-(void)touchesBegan {
    //highlight the label
    labelAll.highlighted = YES;
}

-(void)touchesEnded {
    //return the label to its original state
    labelAll.highlighted = NO;
}

-(void)endEightSquares {
    C4Log(@"endEightSquares");
    [self removeFromSuperview];
    [self.squaresDelegate startPinecone];
}

@end
