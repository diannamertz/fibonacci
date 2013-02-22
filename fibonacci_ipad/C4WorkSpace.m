//
//  C4WorkSpace.m
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 1/4/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "C4Workspace.h"

@implementation C4WorkSpace 
{
    Squares *thirteenSquares;
    Seed *pinecone;
    CGPoint pineconeArcCenter;
    Intro *intro;
    Circle8 *circle8;
    Circle13 *circle13;
}

-(void)setup
{
    CGPoint center;
    center = self.canvas.center;
    
    intro = [[Intro alloc] initWithFrame:CGRectMake(0, 0, 21*XSQ, 13*XSQ)];
    intro.center = center;
    [intro addGesture:TAP name:@"introGesture" action:@"endIntro"];
    intro.introDelegate = self;
    
    thirteenSquares = [[Squares alloc] initWithFrame:CGRectMake(0,0,21*XSQ,13*XSQ)];
    thirteenSquares.fillColor = COLORTRANS;
    thirteenSquares.strokeColor = COLORTRANS;
    thirteenSquares.center = center;
    [thirteenSquares addGesture:TAP name:@"tapGesture" action:@"endThirteenSquares"];
    thirteenSquares.squaresDelegate = self;
    
    pinecone = [[Seed alloc] initWithFrame:CGRectMake(0, 0, 21*XSQ, 13*XSQ)];
    pinecone.fillColor = COLORTRANS;
    pinecone.strokeColor = COLORTRANS;
    pinecone.center = center;
    [pinecone addGesture:TAP name:@"tapGesture" action:@"tapPinecone"];
        
    CGPoint circleCenter8;
    circleCenter8.x = center.x - 400;
    circleCenter8.y = self.canvas.height/2;
    
    circle8 = [[Circle8 alloc] initWithFrame:CGRectMake(0,0,100,100)];
    circle8.center = circleCenter8;
    circle8.fillColor = COLORTRANS;
    circle8.strokeColor = COLORTRANS;
    [circle8 addGesture:TAP name:@"tapGesture" action:@"tapCircleEight"];
    circle8.circle8Delegate = pinecone;
    
    CGPoint circleCenter13;
    circleCenter13.x = center.x + 400;
    circleCenter13.y = self.canvas.height/2;

    circle13 = [[Circle13 alloc] initWithFrame:CGRectMake(0,0,100,100)];
    circle13.center = circleCenter13;
    circle13.fillColor = COLORTRANS;
    circle13.strokeColor = COLORTRANS;
    [circle13 addGesture:TAP name:@"tapGesture" action:@"tapCircleThirteen"];
    circle13.circle13Delegate = pinecone;
    
    [self.canvas addShape:intro];
}

-(void)startThirteenSquares
{
    [self.canvas addShape:thirteenSquares];
}

-(void)startPinecone
{
    [self.canvas addShape:pinecone];
    [self.canvas addShape:circle8];
    [self.canvas addShape:circle13];
}

@end