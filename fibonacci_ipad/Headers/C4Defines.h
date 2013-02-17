//
//  C4Defines.h
//  C4iOSDevelopment
//
//  Created by Travis Kirton on 11-10-12.
//  Copyright (c) 2011 mediart. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef C4iOSDevelopment_C4Defines_h
#define C4iOSDevelopment_C4Defines_h

#if !defined(_C4AssertBody)
#define C4Assert(condition, desc, ...) \
do {			\
if (!(condition)) {	\
[[C4AssertionHandler currentHandler] handleFailureInMethod:_cmd \
object:self file:[NSString stringWithUTF8String:__FILE__] \
lineNumber:__LINE__ description:(desc), ##__VA_ARGS__]; \
}			\
} while(0)
#endif

/* NOT SUPPOSED TO USE #DEFINES, BUT HERE WE DON'T WANT PEOPLE TO CHANGE THE VALUE OF THESE VARIABLES */
#ifndef C4_DEFAULT_COLORS
#define C4RED (UIColor *)[UIColor colorWithRed:1.0f green:0.10f blue:0.10f alpha:1.0f]
#define C4BLUE (UIColor *)[UIColor colorWithRed:0.043f green:0.627f blue:0.902f alpha:1.0f]
#define C4GREY (UIColor *)[UIColor colorWithRed:0.196f green:0.216f blue:0.236f alpha:1.0f]
#endif


#ifndef C4_DEFAULT_FONTNAMES
#define SYSTEMFONTNAME [[UIFont systemFontOfSize:12.0f] fontName]
#define BOLDSYSTEMFONTNAME [[UIFont boldSystemFontOfSize:12.0f] fontName]
#define ITALICSYSTEMFONTNAME [[UIFont italicSystemFontOfSize:12.0f] fontName]
#endif

#ifndef C4_EXTERN
#define C4_EXTERN extern
#endif

//C4_EXTERN NSString *const EASEIN, *const EASEINOUT, *const EASEOUT, *const LINEAR, *const DEFAULT;

C4_EXTERN const CGFloat FOREVER;

C4_EXTERN BOOL VERBOSELOAD;

/* more lexical names for common mathematic variables, e.g. QUARTER_PI instead of M_PI_4 */
C4_EXTERN const CGFloat QUARTER_PI, HALF_PI, PI, TWO_PI, ONE_OVER_PI, TWO_OVER_PI, TWO_OVER_ROOT_PI, E, LOG2E, LOG10E, LN2, LN10, SQRT_TWO, SQRT_ONE_OVER_TWO;

typedef enum C4AnimationOptions : NSUInteger {
    
    ALLOWSINTERACTION = UIViewAnimationOptionAllowUserInteraction,
    BEGINCURRENT = UIViewAnimationOptionBeginFromCurrentState,
    REPEAT = UIViewAnimationOptionRepeat,
    AUTOREVERSE = UIViewAnimationOptionAutoreverse,
//    UIViewAnimationOptionOverrideInheritedDuration = 1 <<  5,
//    UIViewAnimationOptionOverrideInheritedCurve    = 1 <<  6,
//    UIViewAnimationOptionAllowAnimatedContent      = 1 <<  7,
//    UIViewAnimationOptionShowHideTransitionViews   = 1 <<  8,
//    
//    UIViewAnimationOptionCurveEaseInOut            = 0 << 16,
//    UIViewAnimationOptionCurveEaseIn               = 1 << 16,
//    UIViewAnimationOptionCurveEaseOut              = 2 << 16,
//    UIViewAnimationOptionCurveLinear               = 3 << 16,
    EASEINOUT            = UIViewAnimationOptionCurveEaseInOut,
    EASEIN               = UIViewAnimationOptionCurveEaseIn,
    EASEOUT              = UIViewAnimationOptionCurveEaseOut,
    LINEAR               = UIViewAnimationOptionCurveLinear,
//    
//    UIViewAnimationOptionTransitionNone            = 0 << 20,
//    UIViewAnimationOptionTransitionFlipFromLeft    = 1 << 20,
//    UIViewAnimationOptionTransitionFlipFromRight   = 2 << 20,
//    UIViewAnimationOptionTransitionCurlUp          = 3 << 20,
//    UIViewAnimationOptionTransitionCurlDown        = 4 << 20,
//    UIViewAnimationOptionTransitionCrossDissolve   = 5 << 20,
//    UIViewAnimationOptionTransitionFlipFromTop     = 6 << 20,
//    UIViewAnimationOptionTransitionFlipFromBottom  = 7 << 20,
    DEFAULT = 0 | UIViewAnimationOptionBeginFromCurrentState,
} C4AnimationOptions;


typedef enum C4ShapeLayerAnimationType : NSUInteger {
    PATH = 0,
    FILLCOLOR,
    LINEDASHPHASE,
    LINEWIDTH,
    MITRELIMIT,
    STROKECOLOR,
    STROKEEND,
    STROKESTART
} C4ShapeLayerAnimationType;

typedef enum C4LineBreakMode : NSUInteger {
    LABELWORDWRAP = 0,
    LABELCHARWRAP,
    LABELCLIP,
    LABELTRUNCATEHEAD,
    LABELTRUNCATETAIL,
    LABELTRUNCATEMIDDLE
} C4LineBreakMode;

C4_EXTERN NSString * const TRUNCATENONE;
C4_EXTERN NSString * const TRUNCATESTART;
C4_EXTERN NSString * const TRUNCATEEND;
C4_EXTERN NSString * const TRUNCATEMIDDLE;

/* Alignment modes. */

C4_EXTERN NSString * const ALIGNNATURAL;
C4_EXTERN NSString * const ALIGNLEFT;
C4_EXTERN NSString * const ALIGNRIGHT;
C4_EXTERN NSString * const ALIGNCENTER;
C4_EXTERN NSString * const ALIGNJUSTIFIED;

typedef enum C4TextAlignment : NSUInteger {
    ALIGNTEXTLEFT = 0,
    ALIGNTEXTCENTER,
    ALIGNTEXTRIGHT
} C4TextAlignment;

typedef enum C4BaselineAdjustment : NSUInteger {
    ALIGNBASELINES = UIBaselineAdjustmentAlignBaselines, 
    ALIGNBASELINECENTERS = UIBaselineAdjustmentAlignCenters, 
    ALIGNBASELINENONE = UIBaselineAdjustmentNone
} C4BaselineAdjustment;

typedef enum C4YouTubeSize : NSUInteger{
    YTSMALL = 0,
    YTMEDIUM,
    YT720,
    YT1080
} C4YouTubeSize;

typedef enum C4ControlEvents : NSUInteger {
    TOUCHDOWN           = 1 <<  0,      // on all touch downs
    TOUCHDOWNREPEAT     = 1 <<  1,      // on multiple touchdowns (tap count > 1)
    TOUCHDOWNDRAGINSIDE     = 1 <<  2,
    TOUCHDOWNDRAGOUTSIDE    = 1 <<  3,
    TOUCHDOWNDRAGENTER      = 1 <<  4,
    TOUCHDOWNDRAGEXIT       = 1 <<  5,
    TOUCHUPINSIDE       = 1 <<  6,
    TOUCHUPOUTSIDE      = 1 <<  7,
    TOUCHCANCEL         = 1 <<  8,
    
    VALUECHANGED        = 1 << 12,     // sliders, etc.
    
    EDITINGDIDBEGIN     = 1 << 16,     // UITextField
    EDITINGCHANGED      = 1 << 17,
    EDITINGDIDEND       = 1 << 18,
    EDITINGDIDENDONEXIT = 1 << 19,     // 'return key' ending editing
    
    ALLTOUCHEVENTS      = 0x00000FFF,  // for touch events
    ALLEDITINGEVENTS    = 0x000F0000,  // for UITextField
} C4ControlEvents;

typedef enum C4ControlState : NSUInteger {
    NORMAL       = UIControlStateNormal,
    HIGHLIGHTED  = 1 << 0,
    DISABLED     = 1 << 1,
    SELECTED     = 1 << 2
} C4ControlState;

typedef enum C4ControlContentHorizontalAlignment : NSUInteger {
    HORIZONTALALIGNCENTER = 0,
    HORIZONTALALIGNLEFT    = 1,
    HORIZONTALALIGNRIGHT = 2,
    HORIZONTALALIGNFILL   = 3,
} C4ControlContentHorizontalAlignment;

typedef enum C4ControlVerticalAlignment : NSUInteger {
    VERTICALALIGNCENTER = 0,
    VERTICALALIGNLEFT    = 1,
    VERTICALALIGNRIGHT = 2,
    VERTICALALIGNFILL   = 3,
} C4ControlContentVerticalAlignment;

/* `fillRule' values. */

C4_EXTERN NSString *const FILLNORMAL
__OSX_AVAILABLE_STARTING (__MAC_10_6, __IPHONE_3_0);
C4_EXTERN NSString *const FILLEVENODD
__OSX_AVAILABLE_STARTING (__MAC_10_6, __IPHONE_3_0);

/* `lineJoin' values. */

C4_EXTERN NSString *const JOINMITER
__OSX_AVAILABLE_STARTING (__MAC_10_6, __IPHONE_3_0);
C4_EXTERN NSString *const JOINROUND
__OSX_AVAILABLE_STARTING (__MAC_10_6, __IPHONE_3_0);
C4_EXTERN NSString *const JOINBEVEL
__OSX_AVAILABLE_STARTING (__MAC_10_6, __IPHONE_3_0);

/* `lineCap' values. */

C4_EXTERN NSString *const CAPBUTT
__OSX_AVAILABLE_STARTING (__MAC_10_6, __IPHONE_3_0);
C4_EXTERN NSString *const CAPROUND
__OSX_AVAILABLE_STARTING (__MAC_10_6, __IPHONE_3_0);
C4_EXTERN NSString *const CAPSQUARE
__OSX_AVAILABLE_STARTING (__MAC_10_6, __IPHONE_3_0);
#endif

/* `videoGravity' values. */

C4_EXTERN NSString *const RESIZEASPECT NS_AVAILABLE(10_7, 4_0);
C4_EXTERN NSString *const RESIZEFILL NS_AVAILABLE(10_7, 4_0);
C4_EXTERN NSString *const RESIZEFRAME NS_AVAILABLE(10_7, 4_0);
