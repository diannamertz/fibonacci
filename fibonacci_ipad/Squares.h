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
-(void)addSquareThirteen;
-(void)endThirteenSquares;
-(void)removeFromView;
-(void)moveEightAndThirteen;
-(void)addPlus;
-(void)addPlus1;
-(void)addPlus2;
-(void)addPlus3;
-(void)addPlus5;
-(void)addPlus8;
-(void)addPlus13;
-(void)addEqual1;
-(void)addEqual2;
-(void)addEqual3;
-(void)addEqual5;
-(void)addEqual8;
-(void)addEqual13;

@end







