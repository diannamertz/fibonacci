//
//  C4WorkSpace.m
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 1/4/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "C4Workspace.h"
#import "Seed.h"
#import "Squares.h"

@implementation C4WorkSpace
{
    Squares *eightSquares;
    Seed *pinecone;
    CGPoint pineconeArcCenter;
}

-(void)setup {
    int x = 75;

    eightSquares = [[Squares alloc] initWithFrame:CGRectMake(25,25,8*x,13*x)];
    eightSquares.strokeColor = [UIColor clearColor];
    [eightSquares addGesture:TAP name:@"tapGesture" action:@"testSquares"];
    
    pinecone = [[Seed alloc] initWithFrame:CGRectMake(140, 140, 400, 400)];
    pinecone.strokeColor = [UIColor clearColor];
    pinecone.fillColor = [UIColor colorWithRed:0.8118f green:0.8314f blue:0.7373f alpha:1.0f];
    [pinecone addGesture:TAP name:@"tappedGesture" action:@"updateControl5"];
        
    //create a custom font
    C4Font *bottomFont = [C4Font fontWithName:@"Futura" size:20.0f];
    
    //creates a label with the custom font, and a specific frame size for the label
    C4Label *bottomLabel = [C4Label labelWithText:@"Pine cones grow from a tiny group of cells at the tip of a growing pine tree, called the Meristem. New cells are only formed here. Nature packs the seeds in the spiral pattern so as to optimize efficiency. The angle of turn for each new cell is 137.5°." font:bottomFont frame:CGRectMake(0,0,13*x,100)];
    
    bottomLabel.backgroundColor = [UIColor clearColor];
    bottomLabel.textAlignment = ALIGNTEXTCENTER;
    bottomLabel.center = CGPointMake(9*x,self.canvas.height/2);
    bottomLabel.transform = CGAffineTransformMakeRotation( -M_PI/2);
    bottomLabel.numberOfLines = 3;
    

    [self.canvas addShape:eightSquares];
    [self.canvas addLabel:bottomLabel];
    [self.canvas addShape:pinecone];
}



@end