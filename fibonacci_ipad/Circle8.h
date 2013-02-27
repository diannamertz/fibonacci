//
//  Circle8.h
//  fibonacci_ipad
//
//  Created by Dianna Mertz on 2/22/13.
//  Copyright (c) 2013 Dianna Mertz. All rights reserved.
//

#import "C4Shape.h"
#import "Constants.h"
@class Circle8;

@protocol Circle8Delegate <NSObject>
-(void)circle8Tapped;
@end

@protocol TealCircleDelegate <NSObject>
-(void)tealCircleShow;
@end

@interface Circle8 : C4Shape 

@property (nonatomic, assign) id<Circle8Delegate> circle8Delegate;
@property (nonatomic, assign) id<TealCircleDelegate> tealCircleDelegate;

-(void)tapCircleEight;


@end
