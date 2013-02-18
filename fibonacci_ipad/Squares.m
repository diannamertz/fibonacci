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
    C4Shape *allSquares, *square, *square1, *square2, *square3, *square5, *square8;
    C4Label *labelAll, *label, *label1, *label2, *label3, *label5, *label8, *bottomLabel;
    C4Label *countLabel0, *countLabel, *countLabel1, *countLabel2, *countLabel3, *countLabel5, *countLabel8;
    C4Shape *allCountLabels;
}

-(void)setup
{
    //define the squares
    
    square = [C4Shape rect:CGRectMake(2*XSQ,((self.height)-4*XSQ),XSQ,-XSQ)];
    square.strokeColor = COLORSALMON;
    square.fillColor = COLORGREY;

    square1 = [C4Shape rect:CGRectMake(2*XSQ,((self.height)-5*XSQ),XSQ,-XSQ)];
    square1.strokeColor = COLORSALMON;
    square1.fillColor = COLORGREY;

    square2 = [C4Shape rect:CGRectMake(0,((self.height)-5*XSQ),2*XSQ,-2*XSQ)];
    square2.strokeColor = COLORSALMON;
    square2.fillColor = COLORGREY;

    square3 = [C4Shape rect:CGRectMake(0,((self.height)-3*XSQ),3*XSQ,-3*XSQ)];
    square3.strokeColor = COLORSALMON;
    square3.fillColor = COLORGREY;

    square5 = [C4Shape rect:CGRectMake(3*XSQ,((self.height)-5*XSQ),5*XSQ,-5*XSQ)];
    square5.strokeColor = COLORSALMON;
    square5.fillColor = COLORGREY;

    square8 = [C4Shape rect:CGRectMake(0,((self.height)-13*XSQ),8*XSQ,-8*XSQ)];
    square8.strokeColor = COLORSALMON;
    square8.fillColor = COLORGREY;
    
    //square text
    
    C4Font *squaresFont = [C4Font fontWithName:@"HelveticaNeue-Bold" size:25.0f];
    
    label = [C4Label labelWithText:@"1" font:squaresFont];
    label.center = square.center;
    label.textColor = COLORWHITE;
    label.backgroundColor = COLORTRANS;
    label.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    label1 = [C4Label labelWithText:@"1" font:squaresFont];
    label1.center = square1.center;
    label1.textColor = COLORWHITE;
    label1.backgroundColor = COLORTRANS;
    label1.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    label2 = [C4Label labelWithText:@"2" font:squaresFont];
    label2.center = square2.center;
    label2.textColor = COLORWHITE;
    label2.backgroundColor = COLORTRANS;
    label2.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    label3 = [C4Label labelWithText:@"3" font:squaresFont];
    label3.center = square3.center;
    label3.textColor = COLORWHITE;
    label3.backgroundColor = COLORTRANS;
    label3.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    label5 = [C4Label labelWithText:@"5" font:squaresFont];
    label5.center = square5.center;
    label5.textColor = COLORWHITE;
    label5.backgroundColor = COLORTRANS;
    label5.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    label8 = [C4Label labelWithText:@"8" font:squaresFont];
    label8.center = square8.center;
    label8.textColor = COLORWHITE;
    label8.backgroundColor = COLORTRANS;
    label8.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    //place the squares
    allSquares = [C4Shape rect:CGRectMake(0,0,(8*XSQ),(13*XSQ))];
    allSquares.fillColor = COLORWHITE;
    allSquares.strokeColor = COLORWHITE;
    
    int c = 43;
    
    allCountLabels = [C4Shape rect:CGRectMake(0, 0, 13*XSQ, 100)];
    allCountLabels.fillColor = COLORWHITE;
    allCountLabels.strokeColor = COLORTRANS;
    allCountLabels.center = CGPointMake(9*XSQ,(self.height/2)-8);
    allCountLabels.transform = CGAffineTransformMakeRotation( -M_PI/2);
    
    countLabel0 = [C4Label labelWithText:@"0" font:squaresFont frame:CGRectMake(0, 0, c, c)];
    countLabel = [C4Label labelWithText:@"1" font:squaresFont frame:CGRectMake(2*c,0,c,c)];
    countLabel1 = [C4Label labelWithText:@"0 + 1 = 1" font:squaresFont frame:CGRectMake(4*c,0,3*c,c)];
    countLabel2 = [C4Label labelWithText:@"1 + 1 = 2" font:squaresFont frame:CGRectMake(8*c,0,3*c,c)];
    countLabel3 = [C4Label labelWithText:@"1 + 2 = 3" font:squaresFont frame:CGRectMake(12*c,0,3*c,c)];
    countLabel5 = [C4Label labelWithText:@"2 + 3 = 5" font:squaresFont frame:CGRectMake(16*c,0,3*c,c)];
    countLabel8 = [C4Label labelWithText:@"3 + 5 = 8" font:squaresFont frame:CGRectMake(20*c,0,4*c,c)];
    
    countLabel0.textColor = COLORTEAL;
    countLabel.textColor = COLORTEAL;
    countLabel1.textColor = COLORTEAL;
    countLabel2.textColor = COLORTEAL;
    countLabel3.textColor = COLORTEAL;
    countLabel5.textColor = COLORTEAL;
    countLabel8.textColor = COLORTEAL;
    
    [self addShape:allCountLabels];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self !=nil) {
        [self setup];
        [self rect:frame];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [self addShape:allSquares];
    [allCountLabels addLabel:countLabel0];
    [self runMethod:@"addSquare" afterDelay:1.0f];
}

-(void)addSquare
{
    [allCountLabels addLabel:countLabel];
    [allSquares.self addShape:square];
    [allSquares.self addLabel:label];
    [self runMethod:@"addSquareOne" afterDelay:1.0f];
}

-(void)addSquareOne
{
    [allCountLabels addLabel:countLabel1];
    [allSquares.self addShape:square1];
    [allSquares.self addLabel:label1];
    [self runMethod:@"addSquareTwo" afterDelay:1.0f];
}

-(void)addSquareTwo
{
    [allCountLabels addLabel:countLabel2];
    [allSquares.self addShape:square2];
    [allSquares.self addLabel:label2];
    [self runMethod:@"addSquareThree" afterDelay:1.0f];
}

-(void)addSquareThree
{
    [allCountLabels addLabel:countLabel3];
    [allSquares.self addShape:square3];
    [allSquares.self addLabel:label3];
    [self runMethod:@"addSquareFive" afterDelay:1.0f];
}

-(void)addSquareFive
{
    [allCountLabels addLabel:countLabel5];
    [allSquares.self addShape:square5];
    [allSquares.self addLabel:label5];
    [self runMethod:@"addSquareEight" afterDelay:1.0f];
}

-(void)addSquareEight
{
    [allCountLabels addLabel:countLabel8];
    [allSquares.self addShape:square8];
    [allSquares.self addLabel:label8];
}

-(void)endEightSquares {
    [self removeFromSuperview];
    [self.squaresDelegate startPinecone];
}

-(void)touchesBegan {
    labelAll.highlighted = YES;
}

-(void)touchesEnded {
    labelAll.highlighted = NO;
}

@end
