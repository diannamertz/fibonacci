//
//  BackgroundCircle.h
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 2/23/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "C4Shape.h"
#import "Constants.h"
#import "Circle8.h"
#import "Circle13.h"

@interface BackgroundCircle : C4Shape <TealCircleDelegate, SalmonCircleDelegate>

-(void)tealCircleShow;
-(void)salmonCircleShow;

@end
