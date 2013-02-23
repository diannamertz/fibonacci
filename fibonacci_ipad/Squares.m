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
    C4Shape *allSquares, *square, *square1, *square2, *square3, *square5, *square8, *square13;
    C4Label *labelAll, *label, *label1, *label2, *label3, *label5, *label8, *label13;
    C4Label *countLabel0, *countLabel, *countLabel1, *countLabel2, *countLabel3, *countLabel5, *countLabel8, *countLabel13, *countLabelp, *countLabelp1, *countLabelp2, *countLabelp3, *countLabelp5, *countLabelp8, *countLabele1, *countLabele2, *countLabele3, *countLabele5, *countLabele8, *countLabele13;
    C4Shape *allCountLabels, *countInCount;
    CGPoint squareCenter;
}

-(void)setup
{
    
    //allSquares
    allSquares = [C4Shape rect:CGRectMake(0,0,(21*XSQ),(13*XSQ))];
    allSquares.fillColor = COLORTRANS;
    allSquares.strokeColor = COLORTRANS;
    
    //define the squares
    square = [C4Shape rect:CGRectMake(5*XSQ,3*XSQ,XSQ,XSQ)];
    square.strokeColor = COLORSALMON;
    square.fillColor = COLORGREY;
    squareCenter.y = (5*XSQ)+(XSQ/2);
    squareCenter.x = (3*XSQ);
   
    square1 = [C4Shape rect:CGRectMake(5*XSQ,4*XSQ,XSQ,XSQ)];
    square1.strokeColor = COLORSALMON;
    square1.fillColor = COLORGREY;

    square2 = [C4Shape rect:CGRectMake(6*XSQ,3*XSQ,2*XSQ,2*XSQ)];
    square2.strokeColor = COLORSALMON;
    square2.fillColor = COLORGREY;

    square3 = [C4Shape rect:CGRectMake(5*XSQ,0,3*XSQ,3*XSQ)];
    square3.strokeColor = COLORSALMON;
    square3.fillColor = COLORGREY;

    square5 = [C4Shape rect:CGRectMake(0,0,5*XSQ,5*XSQ)];
    square5.strokeColor = COLORSALMON;
    square5.fillColor = COLORGREY;

    square8 = [C4Shape rect:CGRectMake(0,5*XSQ,8*XSQ,8*XSQ)];
    square8.strokeColor = COLORSALMON;
    square8.fillColor = COLORGREY;
    
    square13 = [C4Shape rect:CGRectMake(8*XSQ,0,13*XSQ,13*XSQ)];
    square13.strokeColor = COLORSALMON;
    square13.fillColor = COLORGREY;
    
    //square text
    
    C4Font *squaresFont = [C4Font fontWithName:@"HelveticaNeue-Bold" size:25.0f];
    
    label = [C4Label labelWithText:@"1" font:squaresFont frame:CGRectMake(0,0,XSQ,XSQ)];
    label.textColor = COLORWHITE;
    label.backgroundColor = COLORTRANS;
    label.textAlignment = ALIGNCENTER;
    label.textAlignment = ALIGNTEXTCENTER;
    [square addLabel:label];
    
    label1 = [C4Label labelWithText:@"1" font:squaresFont frame:CGRectMake(0,0,XSQ,XSQ)];
    label1.textColor = COLORWHITE;
    label1.backgroundColor = COLORTRANS;
    label1.textAlignment = ALIGNCENTER;
    label1.textAlignment = ALIGNTEXTCENTER;
    [square1 addLabel:label1];
    
    label2 = [C4Label labelWithText:@"2" font:squaresFont frame:CGRectMake(0,0,2*XSQ,2*XSQ)];
    label2.textColor = COLORWHITE;
    label2.backgroundColor = COLORTRANS;
    label2.textAlignment = ALIGNCENTER;
    label2.textAlignment = ALIGNTEXTCENTER;
    [square2 addLabel:label2];
    
    label3 = [C4Label labelWithText:@"3" font:squaresFont frame:CGRectMake(0,0,3*XSQ,3*XSQ)];
    label3.textColor = COLORWHITE;
    label3.backgroundColor = COLORTRANS;
    label3.textAlignment = ALIGNCENTER;
    label3.textAlignment = ALIGNTEXTCENTER;
    [square3 addLabel:label3];
    
    label5 = [C4Label labelWithText:@"5" font:squaresFont frame:CGRectMake(0,0,5*XSQ,5*XSQ)];
    label5.textColor = COLORWHITE;
    label5.backgroundColor = COLORTRANS;
    label5.textAlignment = ALIGNCENTER;
    label5.textAlignment = ALIGNTEXTCENTER;
    [square5 addLabel:label5];
    
    label8 = [C4Label labelWithText:@"8" font:squaresFont frame:CGRectMake(0,0,8*XSQ,8*XSQ)];
    label8.textColor = COLORWHITE;
    label8.backgroundColor = COLORTRANS;
    label8.textAlignment = ALIGNCENTER;
    label8.textAlignment = ALIGNTEXTCENTER;
    [square8 addLabel:label8];
    
    label13 = [C4Label labelWithText:@"13" font:squaresFont frame:CGRectMake(0,0,13*XSQ,13*XSQ)];
    label13.textColor = COLORWHITE;
    label13.backgroundColor = COLORTRANS;
    label13.textAlignment = ALIGNCENTER;
    label13.textAlignment = ALIGNTEXTCENTER;
    [square13 addLabel:label13];
    
    allCountLabels = [C4Shape rect:CGRectMake(0, 0, (21*XSQ), 2*XSQ)];
    allCountLabels.fillColor = COLORTRANS;
    allCountLabels.strokeColor = COLORTRANS;
    allCountLabels.center = CGPointMake((self.width/2),14*XSQ);
    
    int h;
    h = ((allCountLabels.height/2)-.5*CHI);
    
    countLabel0 = [C4Label labelWithText:@"0" font:squaresFont frame:CGRectMake(0,h,CHI,CHI)];
    
    countLabel = [C4Label labelWithText:@"1" font:squaresFont frame:CGRectMake(2*CHI,h,CHI,CHI)];
    countLabel1 = [C4Label labelWithText:@"1" font:squaresFont frame:CGRectMake(4*CHI,h,CHI,CHI)];
    countLabel2 = [C4Label labelWithText:@"2" font:squaresFont frame:CGRectMake(6*CHI,h,CHI,CHI)];
    countLabel3 = [C4Label labelWithText:@"3" font:squaresFont frame:CGRectMake(8*CHI,h,CHI,CHI)];
    countLabel5 = [C4Label labelWithText:@"5" font:squaresFont frame:CGRectMake(10*CHI,h,CHI,CHI)];
    
    countLabel8 = [C4Label labelWithText:@"8" font:squaresFont frame:CGRectMake(12*CHI,h,CHI,CHI)];
    
    countLabel13 = [C4Label labelWithText:@"13" font:squaresFont frame:CGRectMake(14*CHI,h,CHI,CHI)];
    
    countLabelp = [C4Label labelWithText:@"+" font:squaresFont frame:CGRectMake(CHI,h,CHI,CHI)];
    
    countLabelp1 = [C4Label labelWithText:@"+" font:squaresFont frame:CGRectMake(3*CHI,h,CHI,CHI)];
    countLabele1 = [C4Label labelWithText:@"=" font:squaresFont frame:CGRectMake(3*CHI,h,CHI,CHI)];
    
    countLabelp2 = [C4Label labelWithText:@"+" font:squaresFont frame:CGRectMake(5*CHI,h,CHI,CHI)];
    countLabele2 = [C4Label labelWithText:@"=" font:squaresFont frame:CGRectMake(5*CHI,h,CHI,CHI)];
    
    countLabelp3 = [C4Label labelWithText:@"+" font:squaresFont frame:CGRectMake(7*CHI,h,CHI,CHI)];
    countLabele3 = [C4Label labelWithText:@"=" font:squaresFont frame:CGRectMake(7*CHI,h,CHI,CHI)];
    
    countLabelp5 = [C4Label labelWithText:@"+" font:squaresFont frame:CGRectMake(9*CHI,h,CHI,CHI)];
    countLabele5 = [C4Label labelWithText:@"=" font:squaresFont frame:CGRectMake(9*CHI,h,CHI,CHI)];
    
    countLabelp8 = [C4Label labelWithText:@"+" font:squaresFont frame:CGRectMake(11*CHI,h,CHI,CHI)];
    countLabele8 = [C4Label labelWithText:@"=" font:squaresFont frame:CGRectMake(11*CHI,h,CHI,CHI)];
    
    countLabele13 = [C4Label labelWithText:@"=" font:squaresFont frame:CGRectMake(13*CHI,h,CHI,CHI)];
    
    countLabel0.textColor = COLORTEAL;
    countLabel.textColor = COLORTEAL;
    countLabel1.textColor = COLORTEAL;
    countLabel2.textColor = COLORTEAL;
    countLabel3.textColor = COLORTEAL;
    countLabel5.textColor = COLORTEAL;
    countLabel8.textColor = COLORTEAL;
    countLabel13.textColor = COLORTEAL;
    
    countInCount = [C4Shape rect:CGRectMake(0, 0, (21*XSQ), 2*XSQ)];
    countInCount.fillColor = COLORTRANS;
    countInCount.strokeColor = COLORTRANS;
    
    [self addShape:allCountLabels];
    [allCountLabels addShape:countInCount];
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

- (void)drawRect:(CGRect)rect
{
    [self addShape:allSquares];
    [countInCount addLabel:countLabel0];
    [self runMethod:@"addPlus" afterDelay:0.5f];
}

-(void)addPlus
{
    [countInCount addLabel:countLabelp];
    [self runMethod:@"addSquare" afterDelay:0.5f];
}

-(void)addSquare
{
    [countInCount addLabel:countLabel];
    [allSquares addShape:square];
    [self runMethod:@"addPlus1" afterDelay:0.5f];
}

-(void)addPlus1
{
    [countInCount addLabel:countLabelp];
    [self runMethod:@"addEqual1" afterDelay:0.5f];
}

-(void)addEqual1
{
    [countInCount addLabel:countLabele1];
    [self runMethod:@"addSquareOne" afterDelay:0.5f];
}

-(void)addSquareOne
{
    [countInCount addLabel:countLabel1];
    [allSquares addShape:square1];
    [self runMethod:@"fade1" afterDelay:0.5f];
}

-(void)fade1
{
    countLabelp.animationDuration = 0.5f;
    countLabelp.textColor = COLORWHITE;
    
    countLabele1.animationDuration = 0.5f;
    countLabele1.textColor = COLORWHITE;
    [self runMethod:@"addPlus2" afterDelay:0.5f];
}

-(void)addPlus2
{
    [countInCount addLabel:countLabelp1];
    [self runMethod:@"addEqual2" afterDelay:0.5f];
}

-(void)addEqual2
{
    [countInCount addLabel:countLabele2];
    [self runMethod:@"addSquareTwo" afterDelay:0.5f];
}

-(void)addSquareTwo
{
    [countInCount addLabel:countLabel2];
    [allSquares addShape:square2];
    [self runMethod:@"fade2" afterDelay:0.5f];
}

-(void)fade2
{
    countLabelp1.animationDuration = 0.5f;
    countLabelp1.textColor = COLORWHITE;
    
    countLabele2.animationDuration = 0.5f;
    countLabele2.textColor = COLORWHITE;
    [self runMethod:@"addPlus3" afterDelay:0.5f];
}

-(void)addPlus3
{
    [countInCount addLabel:countLabelp2];
    [self runMethod:@"addEqual3" afterDelay:0.5f];
}

-(void)addEqual3
{
    [countInCount addLabel:countLabele3];
    [self runMethod:@"addSquareThree" afterDelay:0.5f];
}

-(void)addSquareThree
{
    [countInCount addLabel:countLabel3];
    [allSquares addShape:square3];
    [self runMethod:@"fade3" afterDelay:0.5f];
}

-(void)fade3
{
    countLabelp2.animationDuration = 0.5f;
    countLabelp2.textColor = COLORWHITE;
    
    countLabele3.animationDuration = 0.5f;
    countLabele3.textColor = COLORWHITE;
    [self runMethod:@"addPlus5" afterDelay:0.5f];
}

-(void)addPlus5
{
    [countInCount addLabel:countLabelp3];
    [self runMethod:@"addEqual5" afterDelay:0.5f];
}

-(void)addEqual5
{
    [countInCount addLabel:countLabele5];
    [self runMethod:@"addSquareFive" afterDelay:0.5f];
}

-(void)addSquareFive
{
    [countInCount addLabel:countLabel5];
    [allSquares addShape:square5];
    [self runMethod:@"fade5" afterDelay:0.5f];
}

-(void)fade5
{
    countLabelp3.animationDuration = 0.5f;
    countLabelp3.textColor = COLORWHITE;
    
    countLabele5.animationDuration = 0.5f;
    countLabele5.textColor = COLORWHITE;
    [self runMethod:@"addPlus8" afterDelay:0.5f];
}

-(void)addPlus8
{
    [countInCount addLabel:countLabelp5];
    [self runMethod:@"addEqual8" afterDelay:0.5f];
}

-(void)addEqual8
{
    [countInCount addLabel:countLabele8];
    [self runMethod:@"addSquareEight" afterDelay:0.5f];
}

-(void)addSquareEight
{
    [allCountLabels addLabel:countLabel8];
    [allSquares addShape:square8];
    [self runMethod:@"fade8" afterDelay:0.5f];
}

-(void)fade8
{
    countLabelp5.animationDuration = 0.5f;
    countLabelp5.textColor = COLORWHITE;
    
    countLabele8.animationDuration = 0.5f;
    countLabele8.textColor = COLORWHITE;
    [self runMethod:@"addPlus13" afterDelay:0.5f];
}

-(void)addPlus13
{
    [countInCount addLabel:countLabelp8];
    [self runMethod:@"addEqual13" afterDelay:0.5f];
}

-(void)addEqual13
{
    [countInCount addLabel:countLabele13];
    [self runMethod:@"addSquareThirteen" afterDelay:0.5f];
}

-(void)addSquareThirteen
{
    [allCountLabels addLabel:countLabel13];
    [allSquares addShape:square13];
    [self runMethod:@"fade13" afterDelay:0.5f];
}

-(void)fade13
{
    countLabelp8.animationDuration = 0.5f;
    countLabelp8.textColor = COLORWHITE;
    
    countLabele13.animationDuration = 0.5f;
    countLabele13.textColor = COLORWHITE;
}

-(void)endThirteenSquares
{
    allSquares.animationDuration = 2.0f;
    allSquares.animationOptions = AUTOREVERSE | REPEAT;
    allSquares.fillColor = COLORWHITE;
    allSquares.strokeColor = COLORWHITE;
    
    [self removeSquaresFromView];
}

-(void)removeSquaresFromView
{
    [allSquares removeFromSuperview];
    [self.squaresDelegate startPinecone];
    [self moveEightAndThirteen];
}

-(void)moveEightAndThirteen
{
    [countInCount removeFromSuperview];

    countLabel8.animationDuration = 3.0f;
    countLabel8.origin = CGPointMake((super.self.width/2) - 405,((allCountLabels.height/2)-.5*CHI));
    
    countLabel13.animationDuration = 3.0f;
    countLabel13.origin = CGPointMake((allCountLabels.width/2) + 385,((allCountLabels.height/2)-.5*CHI));
    
    allCountLabels.animationDuration = 3.0f;
    allCountLabels.center = CGPointMake((self.width/2),(self.height/2));
}

-(void)touchesBegan {
    labelAll.highlighted = YES;
}

-(void)touchesEnded {
    labelAll.highlighted = NO;
}

@end
