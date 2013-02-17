//
//  C4WorkSpace.m
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 1/4/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "C4Workspace.h"
#import "Seed.h"

@implementation C4WorkSpace 
{
    Squares *eightSquares;
    Seed *pinecone;
    CGPoint pineconeArcCenter;
    Intro *intro;
}

-(void)setup
{
    int x=75;

    CGPoint center;
    center.x = self.canvas.center.x;
    center.y = self.canvas.center.y;
    center.y = self.canvas.height/2;
    center.x = self.canvas.width/2;
    
    intro = [[Intro alloc] initWithFrame:CGRectMake(0, 0, 8*x, 13*x)];
    intro.center = center;
    //intro.transform = CGAffineTransformMakeRotation( -M_PI/2);
    intro.fillColor = [UIColor colorWithRed:RGBToFloat(0) green:RGBToFloat(0) blue:RGBToFloat(0) alpha:RGBToFloat(0)];
    intro.strokeColor = [UIColor colorWithRed:RGBToFloat(0) green:RGBToFloat(0) blue:RGBToFloat(0) alpha:RGBToFloat(0)];
    [intro addGesture:TAP name:@"introGesture" action:@"endIntro"];
    intro.introDelegate = self;
    
    eightSquares = [[Squares alloc] initWithFrame:CGRectMake(0,0,8*x,13*x)];
    eightSquares.fillColor = [UIColor whiteColor];
    eightSquares.strokeColor = [UIColor whiteColor];
    eightSquares.center = center;
    [eightSquares addGesture:TAP name:@"tapGesture" action:@"endEightSquares"];
    eightSquares.squaresDelegate = self;
    
    pinecone = [[Seed alloc] initWithFrame:CGRectMake(140, 140, 400, 400)];
    pinecone.strokeColor = [UIColor clearColor];
    pinecone.fillColor = [UIColor whiteColor];
    pinecone.center = center;
    [pinecone addGesture:TAP name:@"tapGesture" action:@"tapPinecone"];
    
    [self.canvas addShape:intro];
}

-(void)startEightSquares
{
    eightSquares.fillColor = [UIColor whiteColor];
    eightSquares.strokeColor = [UIColor whiteColor];
    [self.canvas addShape:eightSquares];
}

-(void)startPinecone
{
    C4Log(@"delegateworking");
    [self.canvas addShape:pinecone];
}

@end