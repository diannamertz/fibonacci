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
    Circle8 *transCircle8Button;
    Circle13 *transCircle13Button;
    BackgroundCircle *backgroundCircle;
    C4Image *i1;
}

-(void)setup
{
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ecailles.png"]];
    
    CGPoint center;
    center = self.canvas.center;
    
    intro = [[Intro alloc] initWithFrame:CGRectMake(0, 0, 24*XSQ, 18*XSQ)];
    intro.center = center;
    [intro addGesture:TAP name:@"introGesture" action:@"endIntro"];
    intro.fillColor = COLORTRANS;
    intro.strokeColor = COLORTRANS;
    intro.introDelegate = self;
    
    thirteenSquares = [[Squares alloc] initWithFrame:CGRectMake(0,0,21*XSQ,13*XSQ)];
    thirteenSquares.fillColor = COLORTRANS;
    thirteenSquares.strokeColor = COLORTRANS;
    thirteenSquares.center = center;
    [thirteenSquares addGesture:TAP name:@"tapGesture" action:@"endThirteenSquares"];
    thirteenSquares.squaresDelegate = self;
    
    pinecone = [[Seed alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    pinecone.fillColor = COLORTRANS;
    pinecone.strokeColor = COLORTRANS;
    pinecone.center = center;
    pinecone.startoverDelegate = self;
    [pinecone addGesture:TAP name:@"swipeGesture" action:@"swipePinecone"];
        
    CGPoint circleCenter8;
    circleCenter8.x = center.x - 400;
    circleCenter8.y = self.canvas.height/2;
    
    backgroundCircle = [[BackgroundCircle alloc] initWithFrame:CGRectMake(0,0,200,200)];
    backgroundCircle.center = center;
    backgroundCircle.fillColor = COLORTRANS;
    backgroundCircle.strokeColor = COLORTRANS;
    
    transCircle8Button = [[Circle8 alloc] initWithFrame:CGRectMake(0,0,100,100)];
    transCircle8Button.center = circleCenter8;
    transCircle8Button.fillColor = COLORTRANS;
    transCircle8Button.strokeColor = COLORTRANS;
    [transCircle8Button addGesture:TAP name:@"tapGesture" action:@"tapCircleEight"];
    transCircle8Button.circle8Delegate = pinecone;
    transCircle8Button.tealCircleDelegate = backgroundCircle;

    CGPoint circleCenter13;
    circleCenter13.x = center.x + 400;
    circleCenter13.y = self.canvas.height/2;

    transCircle13Button = [[Circle13 alloc] initWithFrame:CGRectMake(0,0,100,100)];
    transCircle13Button.center = circleCenter13;
    transCircle13Button.fillColor = COLORTRANS;
    transCircle13Button.strokeColor = COLORTRANS;
    [transCircle13Button addGesture:TAP name:@"tapGesture" action:@"tapCircleThirteen"];
    transCircle13Button.circle13Delegate = pinecone;
    transCircle13Button.salmonCircleDelegate = backgroundCircle;
    
    CGPoint i1Center;
    i1Center.x = circleCenter8.x;
    i1Center.y = center.y -300;
    i1 = [C4Image imageNamed:@"nav-back.png"];
    i1.center = i1Center;

    [self addShape:intro];
}

-(void)restart
{
    [backgroundCircle removeFromSuperview];
    [pinecone removeFromSuperview];
    [transCircle8Button removeFromSuperview];
    [transCircle13Button removeFromSuperview];
    [thirteenSquares removeFromSuperview];
    [self setup];
}

-(void)startThirteenSquares
{
    [self.canvas addShape:thirteenSquares];
}

-(void)startPinecone
{
    [self.canvas addShape:backgroundCircle];
    [self.canvas addShape:pinecone];
    [self.canvas addShape:transCircle8Button];
    [self.canvas addShape:transCircle13Button];
}

@end