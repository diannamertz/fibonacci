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
#import <QuartzCore/QuartzCore.h>

@interface Seed : C4Shape <Circle8Delegate, Circle13Delegate>

-(void)tapPinecone;
-(void)circle8Tapped;
-(void)circle13Tapped;


@end
