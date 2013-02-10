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
    color1 = [UIColor colorWithRed:0.9725f green:0.9294f blue:0.8039f alpha:1.0f];
    color2 = [UIColor colorWithRed:0.8941f green:0.8863f blue:0.7882f alpha:1.0f];
    color3 = [UIColor colorWithRed:0.7294f green:0.7764f blue:0.6902f alpha:1.0f];
    color4 = [UIColor colorWithRed:0.3569f green:0.2235f blue:0.1882f alpha:1.0f];
    color5 = [UIColor colorWithRed:0.4902f green:0.4157f blue:0.4f alpha:1.0f];
    color6 = [UIColor colorWithRed:0.8118f green:0.8314f blue:0.7373f alpha:1.0f];
    color7 = [UIColor colorWithRed:0.7333f green:0.6902f blue:0.6627f alpha:1.0f];
    
    int x = 75;
    
    square = [C4Shape rect:CGRectMake(2*x,((self.height)-3*x),x,-x)];
    square.strokeColor = [UIColor clearColor];
    square.fillColor = color1;
    
    square1 = [C4Shape rect:CGRectMake(2*x,((self.height)-4*x),x,-x)];
    square1.strokeColor = [UIColor clearColor];
    square1.fillColor = color2;
    
    square2 = [C4Shape rect:CGRectMake(0,((self.height)-3*x),2*x,-2*x)];
    square2.strokeColor = [UIColor clearColor];
    square2.fillColor = color3;
    
    square3 = [C4Shape rect:CGRectMake(0,self.height,3*x,-3*x)];
    square3.strokeColor = [UIColor clearColor];
    square3.fillColor = color4;
    
    square5 = [C4Shape rect:CGRectMake(3*x,self.height,5*x,-5*x)];
    square5.strokeColor = [UIColor clearColor];
    square5.fillColor = color5;
    
    square8 = [C4Shape rect:CGRectMake(0,((self.height)-5*x),8*x,-8*x)];
    square8.strokeColor = [UIColor clearColor];
    square8.fillColor = color6;
    
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
    
    C4Label *label2 = [C4Label labelWithText:@"2 = 1 + 1" font:squaresFont];
    label2.center = square2.center;
    label2.textColor = [UIColor whiteColor];
    label2.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    C4Label *label3 = [C4Label labelWithText:@"3 = 2 + 1" font:squaresFont];
    label3.center = square3.center;
    label3.textColor = [UIColor whiteColor];
    label3.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    C4Label *label5 = [C4Label labelWithText:@"5 = 3 + 2" font:squaresFont];
    label5.center = square5.center;
    label5.textColor = [UIColor whiteColor];
    label5.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
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

-(void)testSquares {
    C4Log(@"test");
    self.fillColor = color1;
}

@end
