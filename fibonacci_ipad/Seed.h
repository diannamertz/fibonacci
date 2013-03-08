//
//  Seed.h
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 1/22/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "C4Shape.h"
#import "Constants.h"
#import "Circle8.h"
#import "Circle13.h"
@class Seed;

@protocol StartoverDelegate <NSObject>
-(void)restart;
@end

@interface Seed : C4Shape <Circle8Delegate, Circle13Delegate>

@property (nonatomic, assign) id<StartoverDelegate> startoverDelegate;

-(void)swipePinecone;
-(void)circle8Tapped;
-(void)circle13Tapped;
-(void)seedBeginning;


@end
