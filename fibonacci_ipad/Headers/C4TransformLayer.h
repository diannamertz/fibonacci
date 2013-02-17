//
//  C4TransformLayer.h
//  Clock
//
//  Created by moi on 12-08-15.
//  Copyright (c) 2012 moi. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface C4TransformLayer : CATransformLayer <C4LayerAnimation>

@property (readwrite, nonatomic) CGFloat perspectiveDistance;
@end
