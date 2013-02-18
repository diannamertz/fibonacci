//
//  Squares.h
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 2/9/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "C4Shape.h"
#import "Constants.h"
@class Squares;

@protocol SquaresDelegate <NSObject>
-(void)startPinecone;
@end

@interface Squares : C4Shape

@property (nonatomic, assign) id<SquaresDelegate> squaresDelegate;

-(void)touchesBegan;
-(void)touchesEnded;
-(void)addSquare;
-(void)addSquareOne;
-(void)addSquareTwo;
-(void)addSquareThree;
-(void)addSquareFive;
-(void)addSquareEight;
-(void)endEightSquares;

@end







