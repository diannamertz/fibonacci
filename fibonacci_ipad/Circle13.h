//
//  Circle13.h
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 2/22/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "C4Shape.h"
#import "Constants.h"
@class Circle13;

@protocol Circle13Delegate <NSObject>
-(void)circle13Tapped;
@end

@interface Circle13 : C4Shape

@property (nonatomic, assign) id<Circle13Delegate> circle13Delegate;

-(void)tapCircleThirteen;

@end
