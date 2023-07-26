//
//  UITextView+DSL.h
//  SCTests
//
//  Created by CYQF on 2022/11/21.
//

#import <UIKit/UIKit.h>
#if __has_include(<Masonry/Masonry.h>)
#import <Masonry/Masonry.h>
#endif
@interface UITextView (DSL)
///------------父类属性-----------
@property (nonatomic,readonly) UITextView *(^after)(void (^)(UITextView *textView));
@property (nonatomic,readonly) UITextView *(^setBackgroundColor)(UIColor *);
@property (nonatomic,readonly) UITextView *(^setBackgroundImage)(UIImage *);
@property (nonatomic,readonly) UITextView *(^setUserInteractionEnabled)(BOOL);
@property (nonatomic,readonly) UITextView *(^setContentMode)(UIViewContentMode);
@property (nonatomic,readonly) UITextView *(^setFrame)(CGRect);
@property (nonatomic,readonly) UITextView *(^setX)(CGFloat);
@property (nonatomic,readonly) UITextView *(^setY)(CGFloat);
@property (nonatomic,readonly) UITextView *(^setWidth)(CGFloat);
@property (nonatomic,readonly) UITextView *(^setHeight)(CGFloat);
@property (nonatomic,readonly) UITextView *(^setOrigin)(CGPoint);
@property (nonatomic,readonly) UITextView *(^setSize)(CGSize);
@property (nonatomic,readonly) UITextView *(^setCenter)(CGPoint);
@property (nonatomic,readonly) UITextView *(^setCenterX)(CGFloat);
@property (nonatomic,readonly) UITextView *(^setCenterY)(CGFloat);
@property (nonatomic,readonly) UITextView *(^setAlpha)(CGFloat);
@property (nonatomic,readonly) UITextView *(^setHidden)(BOOL);
@property (nonatomic,readonly) UITextView *(^setClipsToBounds)(BOOL);
@property (nonatomic,readonly) UITextView *(^setTag)(NSInteger);
@property (nonatomic,readonly) UITextView *(^setBorderColor)(UIColor *);
@property (nonatomic,readonly) UITextView *(^setBorderWidth)(CGFloat);
@property (nonatomic,readonly) UITextView *(^setShadowColor)(UIColor *);
@property (nonatomic,readonly) UITextView *(^setShadowOffset)(CGSize);
@property (nonatomic,readonly) UITextView *(^setShadowPath)(CGPathRef);
@property (nonatomic,readonly) UITextView *(^setShadowRadius)(CGFloat);
@property (nonatomic,readonly) UITextView *(^setShadowOpacity)(CGFloat);
@property (nonatomic,readonly) UITextView *(^setCornerRadius)(CGFloat);
@property (nonatomic,readonly) UITextView *(^addTapGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UITextView *(^addLongPressGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UITextView *(^addSwipeGestureRecognizer)(id, SEL,UISwipeGestureRecognizerDirection);
@property (nonatomic,readonly) UITextView *(^removeGestureRecognizers)(void);

#if __has_include (<Masonry/Masonry.h>)
@property (nonatomic,readonly) UITextView *(^makeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UITextView *(^remakeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UITextView *(^updateConstraint)(void (^)(MASConstraintMaker *make));
#endif

///-----------UIScrollView------------
@property (nonatomic,readonly) UITextView *(^setContentOffset)(CGPoint);
@property (nonatomic,readonly) UITextView *(^setContentSize)(CGSize);
@property (nonatomic,readonly) UITextView *(^setContentInset)(UIEdgeInsets);
@property (nonatomic,readonly) UITextView *(^setContentInsetAdjustmentBehavior)(UIScrollViewContentInsetAdjustmentBehavior) API_AVAILABLE(ios(11.0),tvos(11.0));
@property (nonatomic,readonly) UITextView *(^setDirectionalLockEnabled)(BOOL);
@property (nonatomic,readonly) UITextView *(^setBounces)(BOOL);
@property (nonatomic,readonly) UITextView *(^setAlwaysBounceVertical)(BOOL);
@property (nonatomic,readonly) UITextView *(^setAlwaysBounceHorizontal)(BOOL);
@property (nonatomic,readonly) UITextView *(^setPagingEnabled)(BOOL) API_UNAVAILABLE(tvos);
@property (nonatomic,readonly) UITextView *(^setScrollEnabled)(BOOL);
@property (nonatomic,readonly) UITextView *(^setShowsVerticalScrollIndicator)(BOOL);
@property (nonatomic,readonly) UITextView *(^setShowsHorizontalScrollIndicator)(BOOL);
@property (nonatomic,readonly) UITextView *(^setShowsScrollIndicator)(BOOL);
@property (nonatomic,readonly) UITextView *(^setIndicatorStyle)(UIScrollViewIndicatorStyle);
@property (nonatomic,readonly) UITextView *(^setVerticalScrollIndicatorInsets)(UIEdgeInsets) API_AVAILABLE(ios(11.1), tvos(11.1));
@property (nonatomic,readonly) UITextView *(^setHorizontalScrollIndicatorInsets)(UIEdgeInsets) API_AVAILABLE(ios(11.1), tvos(11.1));
@property (nonatomic,readonly) UITextView *(^setDecelerationRate)(UIScrollViewDecelerationRate) API_AVAILABLE(ios(3.0));
@property (nonatomic,readonly) UITextView *(^setIndexDisplayMode)(UIScrollViewIndexDisplayMode) API_AVAILABLE(tvos(10.2));
@property (nonatomic,readonly) UITextView *(^setDelaysContentTouches)(BOOL);
@property (nonatomic,readonly) UITextView *(^setCanCancelContentTouches)(BOOL);
@property (nonatomic,readonly) UITextView *(^setMinimumZoomScale)(CGFloat);
@property (nonatomic,readonly) UITextView *(^setMaximumZoomScale)(CGFloat);
@property (nonatomic,readonly) UITextView *(^setZoomScale)(CGFloat) API_AVAILABLE(ios(3.0));
@property (nonatomic,readonly) UITextView *(^setBouncesZoom)(BOOL);
@property (nonatomic,readonly) UITextView *(^setScrollsToTop)(BOOL) API_UNAVAILABLE(tvos);
@property (nonatomic,readonly) UITextView *(^setKeyboardDismissMode)(UIScrollViewKeyboardDismissMode) API_AVAILABLE(ios(7.0));
@property (nonatomic,readonly) UITextView *(^setRefreshControl)(UIRefreshControl *) API_AVAILABLE(ios(10.0)) API_UNAVAILABLE(tvos);

///-----------UITextView------------
@property (nonatomic,readonly) UITextView *(^setDelegate)(id<UITextViewDelegate>);

/// 设置字体
@property (nonatomic,readonly) UITextView *(^setFont)(UIFont *);
@property (nonatomic,readonly) UITextView *(^setSystemFontOfSize)(CGFloat);
@property (nonatomic,readonly) UITextView *(^setBoldSystemFontOfSize)(CGFloat);

/// 设置文字
@property (nonatomic,readonly) UITextView *(^setText)(NSString *);
@property (nonatomic,readonly) UITextView *(^setTextColor)(UIColor *);

@property (nonatomic,readonly) UITextView *(^setTextAlignment)(NSTextAlignment);

@property (nonatomic,readonly) UITextView *(^setSelectedRange)(NSRange);

@property (nonatomic,readonly) UITextView *(^setEditable)(BOOL) API_UNAVAILABLE(tvos);
@property (nonatomic,readonly) UITextView *(^setSelectable)(BOOL) API_AVAILABLE(ios(7.0));

@property (nonatomic,readonly) UITextView *(^setAllowsEditingTextAttributes)(BOOL) API_AVAILABLE(ios(6.0));

@property (nonatomic,readonly) UITextView *(^setDataDetectorTypes)(UIDataDetectorTypes) API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos);

@property (nonatomic,readonly) UITextView *(^setAttributedString)(NSAttributedString *);

@property (nonatomic,readonly) UITextView *(^setTypingAttributes)(NSDictionary<NSAttributedStringKey, id>  *) API_AVAILABLE(ios(6.0));

@property (nonatomic,readonly) UITextView *(^setClearsOnInsertion)(BOOL) API_AVAILABLE(ios(6.0));

@property (nonatomic,readonly) UITextView *(^setTextContainerInset)(UIEdgeInsets) API_AVAILABLE(ios(7.0));

@property (nonatomic,readonly) UITextView *(^setLinkTextAttributes)(NSDictionary<NSAttributedStringKey,id> *) API_AVAILABLE(ios(7.0));


@property (nonatomic,readonly) UITextView *(^setUsesStandardTextScaling)(BOOL) API_AVAILABLE(ios(13.0));

@property (nonatomic,readonly) UITextView *(^setFindInteractionEnabled)(BOOL) API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(watchos, tvos);

@property (nonatomic,readonly) UITextView *(^setInteractionState)(id) API_AVAILABLE(ios(15.0));

@end
