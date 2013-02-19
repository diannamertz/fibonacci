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
    
    pinecone = [[Seed alloc] initWithFrame:CGRectMake(140, 140, 400, 400)];
    pinecone.fillColor = COLORTRANS;
    pinecone.strokeColor = COLORTRANS;
    pinecone.center = center;
    [pinecone addGesture:TAP name:@"tapGesture" action:@"tapPinecone"];
    
    [self.canvas addShape:intro];
}

-(void)startThirteenSquares
{
    [self.canvas addShape:thirteenSquares];
}

-(void)startPinecone
{
    [self.canvas addShape:pinecone];
}

@end