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
    Squares *eightSquares;
    Seed *pinecone;
    CGPoint pineconeArcCenter;
    Intro *intro;
}

-(void)setup
{
    CGPoint center;
    center.x = self.canvas.center.x;
    center.y = self.canvas.center.y;
    center.y = self.canvas.height/2;
    center.x = self.canvas.width/2;
    
    intro = [[Intro alloc] initWithFrame:CGRectMake(0, 0, 8*XSQ, 13*XSQ)];
    intro.fillColor = COLORTRANS;
    intro.strokeColor = COLORTRANS;
    intro.center = center;
    [intro addGesture:TAP name:@"introGesture" action:@"endIntro"];
    intro.introDelegate = self;
    
    eightSquares = [[Squares alloc] initWithFrame:CGRectMake(0,0,8*XSQ,13*XSQ)];
    eightSquares.fillColor = COLORTRANS;
    eightSquares.strokeColor = COLORTRANS;
    eightSquares.center = center;
    [eightSquares addGesture:TAP name:@"tapGesture" action:@"endEightSquares"];
    eightSquares.squaresDelegate = self;
    
    pinecone = [[Seed alloc] initWithFrame:CGRectMake(140, 140, 400, 400)];
    pinecone.fillColor = COLORTRANS;
    pinecone.strokeColor = COLORTRANS;
    pinecone.center = center;
    [pinecone addGesture:TAP name:@"tapGesture" action:@"tapPinecone"];
    
    [self.canvas addShape:intro];
}

-(void)startEightSquares
{
    [self.canvas addShape:eightSquares];
}

-(void)startPinecone
{
    [self.canvas addShape:pinecone];
}

@end