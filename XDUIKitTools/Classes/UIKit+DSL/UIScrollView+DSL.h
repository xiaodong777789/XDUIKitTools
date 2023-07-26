//
//  UIScrollView+DSL.h
//  SpeculateVolunteer
//
//  Created by CYQF on 2023/7/10.
//

#import <UIKit/UIKit.h>
#if __has_include(<Masonry/Masonry.h>)
#import <Masonry/Masonry.h>
#endif
@interface UIScrollView (DSL)

///------------父类属性-----------
@property (nonatomic,readonly) UIScrollView *(^after)(void (^)(UIScrollView *textView));
@property (nonatomic,readonly) UIScrollView *(^setBackgroundColor)(UIColor *);
@property (nonatomic,readonly) UIScrollView *(^setBackgroundImage)(UIImage *);
@property (nonatomic,readonly) UIScrollView *(^setUserInteractionEnabled)(BOOL);
@property (nonatomic,readonly) UIScrollView *(^setContentMode)(UIViewContentMode);
@property (nonatomic,readonly) UIScrollView *(^setFrame)(CGRect);
@property (nonatomic,readonly) UIScrollView *(^setX)(CGFloat);
@property (nonatomic,readonly) UIScrollView *(^setY)(CGFloat);
@property (nonatomic,readonly) UIScrollView *(^setWidth)(CGFloat);
@property (nonatomic,readonly) UIScrollView *(^setHeight)(CGFloat);
@property (nonatomic,readonly) UIScrollView *(^setOrigin)(CGPoint);
@property (nonatomic,readonly) UIScrollView *(^setSize)(CGSize);
@property (nonatomic,readonly) UIScrollView *(^setCenter)(CGPoint);
@property (nonatomic,readonly) UIScrollView *(^setCenterX)(CGFloat);
@property (nonatomic,readonly) UIScrollView *(^setCenterY)(CGFloat);
@property (nonatomic,readonly) UIScrollView *(^setAlpha)(CGFloat);
@property (nonatomic,readonly) UIScrollView *(^setHidden)(BOOL);
@property (nonatomic,readonly) UIScrollView *(^setClipsToBounds)(BOOL);
@property (nonatomic,readonly) UIScrollView *(^setTag)(NSInteger);
@property (nonatomic,readonly) UIScrollView *(^setBorderColor)(UIColor *);
@property (nonatomic,readonly) UIScrollView *(^setBorderWidth)(CGFloat);
@property (nonatomic,readonly) UIScrollView *(^setShadowColor)(UIColor *);
@property (nonatomic,readonly) UIScrollView *(^setShadowOffset)(CGSize);
@property (nonatomic,readonly) UIScrollView *(^setShadowPath)(CGPathRef);
@property (nonatomic,readonly) UIScrollView *(^setShadowRadius)(CGFloat);
@property (nonatomic,readonly) UIScrollView *(^setShadowOpacity)(CGFloat);
@property (nonatomic,readonly) UIScrollView *(^setCornerRadius)(CGFloat);
@property (nonatomic,readonly) UIScrollView *(^addTapGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UIScrollView *(^addLongPressGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UIScrollView *(^addSwipeGestureRecognizer)(id, SEL,UISwipeGestureRecognizerDirection);
@property (nonatomic,readonly) UIScrollView *(^removeGestureRecognizers)(void);

#if __has_include (<Masonry/Masonry.h>)
@property (nonatomic,readonly) UIScrollView *(^makeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UIScrollView *(^remakeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UIScrollView *(^updateConstraint)(void (^)(MASConstraintMaker *make));
#endif

///-----------UIScrollView------------
@property (nonatomic,readonly) UIScrollView *(^setContentOffset)(CGPoint);               // default CGPointZero
@property (nonatomic,readonly) UIScrollView *(^setContentSize)(CGSize);                  // default CGSizeZero
@property (nonatomic,readonly) UIScrollView *(^setContentInset)(UIEdgeInsets);           // default UIEdgeInsetsZero. add additional scroll area around content


@property (nonatomic,readonly) UIScrollView *(^setDelegate)(id<UIScrollViewDelegate>);

@property (nonatomic,readonly) UIScrollView *(^setContentInsetAdjustmentBehavior)(UIScrollViewContentInsetAdjustmentBehavior) API_AVAILABLE(ios(11.0),tvos(11.0));

@property (nonatomic,readonly) UIScrollView *(^setDirectionalLockEnabled)(BOOL);         // default NO. if YES, try to lock vertical or horizontal scrolling while dragging
@property (nonatomic,readonly) UIScrollView *(^setBounces)(BOOL);                        // default YES. if YES, bounces past edge of content and back again
@property (nonatomic,readonly) UIScrollView *(^setAlwaysBounceVertical)(BOOL);           // default NO. if YES and bounces is YES, even if content is smaller than bounds, allow drag vertically
@property (nonatomic,readonly) UIScrollView *(^setAlwaysBounceHorizontal)(BOOL);         // default NO. if YES and bounces is YES, even if content is smaller than bounds, allow drag horizontally
@property (nonatomic,readonly) UIScrollView *(^setPagingEnabled)(BOOL) API_UNAVAILABLE(tvos);// default NO. if YES, stop on multiples of view bounds
@property (nonatomic,readonly) UIScrollView *(^setScrollEnabled)(BOOL);                  // default YES. turn off any dragging temporarily

@property (nonatomic,readonly) UIScrollView *(^setShowsVerticalScrollIndicator)(BOOL);   // default YES. show indicator while we are tracking. fades out after tracking
@property (nonatomic,readonly) UIScrollView *(^setShowsHorizontalScrollIndicator)(BOOL); // default YES. show indicator while we are tracking. fades out after tracking
@property (nonatomic,readonly) UIScrollView *(^setShowsScrollIndicator)(BOOL);           // default YES.
@property (nonatomic,readonly) UIScrollView *(^setIndicatorStyle)(UIScrollViewIndicatorStyle);// default is UIScrollViewIndicatorStyleDefault

@property (nonatomic,readonly) UIScrollView *(^setVerticalScrollIndicatorInsets)(UIEdgeInsets) API_AVAILABLE(ios(11.1), tvos(11.1)); // default is UIEdgeInsetsZero.
@property (nonatomic,readonly) UIScrollView *(^setHorizontalScrollIndicatorInsets)(UIEdgeInsets) API_AVAILABLE(ios(11.1), tvos(11.1)); // default is UIEdgeInsetsZero.
@property (nonatomic,readonly) UIScrollView *(^setScrollIndicatorInsets)(UIEdgeInsets); // use the setter only, as a convenience for setting both verticalScrollIndicatorInsets and horizontalScrollIndicatorInsets to the same value. if those properties have been set to different values, the return value of this getter (deprecated) is undefined.

@property (nonatomic,readonly) UIScrollView *(^setDecelerationRate)(UIScrollViewDecelerationRate) API_AVAILABLE(ios(3.0));
@property (nonatomic,readonly) UIScrollView *(^setIndexDisplayMode)(UIScrollViewIndexDisplayMode) API_AVAILABLE(tvos(10.2));

@property (nonatomic,readonly) UIScrollView *(^setDelaysContentTouches)(BOOL);       // default is YES. if NO, we immediately call -touchesShouldBegin:withEvent:inContentView:. this has no effect on presses
@property (nonatomic,readonly) UIScrollView *(^setCanCancelContentTouches)(BOOL);    // default is YES. if NO, then once we start tracking, we don't try to drag if the touch moves. this has no effect on presses


@property (nonatomic,readonly) UIScrollView *(^setMinimumZoomScale)(CGFloat);     // default is 1.0
@property (nonatomic,readonly) UIScrollView *(^setMaximumZoomScale)(CGFloat);     // default is 1.0. must be > minimum zoom scale to enable zooming

@property (nonatomic,readonly) UIScrollView *(^setZoomScale)(CGFloat) API_AVAILABLE(ios(3.0));            // default is 1.0

@property (nonatomic,readonly) UIScrollView *(^setBouncesZoom)(BOOL);          // default is YES. if set, user can go past min/max zoom while gesturing and the zoom will animate to the min/max value at gesture end

@property (nonatomic,readonly) UIScrollView *(^setScrollsToTop)(BOOL) API_UNAVAILABLE(tvos);          // default is YES.

@property (nonatomic,readonly) UIScrollView *(^setKeyboardDismissMode)(UIScrollViewKeyboardDismissMode) API_AVAILABLE(ios(7.0)); // default is UIScrollViewKeyboardDismissModeNone

@property (nonatomic,readonly) UIScrollView *(^setRefreshControl)(UIRefreshControl *) API_AVAILABLE(ios(10.0)) API_UNAVAILABLE(tvos);

@end

