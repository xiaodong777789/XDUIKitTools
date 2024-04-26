//
//  UITableView+DSL.h
//  SpeculateVolunteer
//
//  Created by CYQF on 2023/7/10.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>

@interface UITableView (DSL)
///------------父类属性-----------
@property (nonatomic,readonly) UITableView *(^after)(void (^)(UITableView *textView));
@property (nonatomic,readonly) UITableView *(^setBackgroundColor)(UIColor *);
@property (nonatomic,readonly) UITableView *(^setBackgroundImage)(UIImage *);
@property (nonatomic,readonly) UITableView *(^setUserInteractionEnabled)(BOOL);
@property (nonatomic,readonly) UITableView *(^setContentMode)(UIViewContentMode);
@property (nonatomic,readonly) UITableView *(^setFrame)(CGRect);
@property (nonatomic,readonly) UITableView *(^setX)(CGFloat);
@property (nonatomic,readonly) UITableView *(^setY)(CGFloat);
@property (nonatomic,readonly) UITableView *(^setWidth)(CGFloat);
@property (nonatomic,readonly) UITableView *(^setHeight)(CGFloat);
@property (nonatomic,readonly) UITableView *(^setOrigin)(CGPoint);
@property (nonatomic,readonly) UITableView *(^setSize)(CGSize);
@property (nonatomic,readonly) UITableView *(^setCenter)(CGPoint);
@property (nonatomic,readonly) UITableView *(^setCenterX)(CGFloat);
@property (nonatomic,readonly) UITableView *(^setCenterY)(CGFloat);
@property (nonatomic,readonly) UITableView *(^setAlpha)(CGFloat);
@property (nonatomic,readonly) UITableView *(^setHidden)(BOOL);
@property (nonatomic,readonly) UITableView *(^setClipsToBounds)(BOOL);
@property (nonatomic,readonly) UITableView *(^setTag)(NSInteger);
@property (nonatomic,readonly) UITableView *(^setBorderColor)(UIColor *);
@property (nonatomic,readonly) UITableView *(^setBorderWidth)(CGFloat);
@property (nonatomic,readonly) UITableView *(^setShadowColor)(UIColor *);
@property (nonatomic,readonly) UITableView *(^setShadowOffset)(CGSize);
@property (nonatomic,readonly) UITableView *(^setShadowPath)(CGPathRef);
@property (nonatomic,readonly) UITableView *(^setShadowRadius)(CGFloat);
@property (nonatomic,readonly) UITableView *(^setShadowOpacity)(CGFloat);
@property (nonatomic,readonly) UITableView *(^setCornerRadius)(CGFloat);
@property (nonatomic,readonly) UITableView *(^addTapGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UITableView *(^addLongPressGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UITableView *(^addSwipeGestureRecognizer)(id, SEL,UISwipeGestureRecognizerDirection);
@property (nonatomic,readonly) UITableView *(^removeGestureRecognizers)(void);

@property (nonatomic,readonly) UITableView *(^makeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UITableView *(^remakeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UITableView *(^updateConstraint)(void (^)(MASConstraintMaker *make));

///-----------UIScrollView------------
@property (nonatomic,readonly) UITableView *(^setContentOffset)(CGPoint);
@property (nonatomic,readonly) UITableView *(^setContentSize)(CGSize);
@property (nonatomic,readonly) UITableView *(^setContentInset)(UIEdgeInsets);
@property (nonatomic,readonly) UITableView *(^setContentInsetAdjustmentBehavior)(UIScrollViewContentInsetAdjustmentBehavior) API_AVAILABLE(ios(11.0),tvos(11.0));
@property (nonatomic,readonly) UITableView *(^setDirectionalLockEnabled)(BOOL);
@property (nonatomic,readonly) UITableView *(^setBounces)(BOOL);
@property (nonatomic,readonly) UITableView *(^setAlwaysBounceVertical)(BOOL);
@property (nonatomic,readonly) UITableView *(^setAlwaysBounceHorizontal)(BOOL);
@property (nonatomic,readonly) UITableView *(^setPagingEnabled)(BOOL) API_UNAVAILABLE(tvos);
@property (nonatomic,readonly) UITableView *(^setScrollEnabled)(BOOL);
@property (nonatomic,readonly) UITableView *(^setShowsVerticalScrollIndicator)(BOOL);
@property (nonatomic,readonly) UITableView *(^setShowsHorizontalScrollIndicator)(BOOL);
@property (nonatomic,readonly) UITableView *(^setShowsScrollIndicator)(BOOL);
@property (nonatomic,readonly) UITableView *(^setIndicatorStyle)(UIScrollViewIndicatorStyle);
@property (nonatomic,readonly) UITableView *(^setVerticalScrollIndicatorInsets)(UIEdgeInsets) API_AVAILABLE(ios(11.1), tvos(11.1));
@property (nonatomic,readonly) UITableView *(^setHorizontalScrollIndicatorInsets)(UIEdgeInsets) API_AVAILABLE(ios(11.1), tvos(11.1));
@property (nonatomic,readonly) UITableView *(^setDecelerationRate)(UIScrollViewDecelerationRate) API_AVAILABLE(ios(3.0));
@property (nonatomic,readonly) UITableView *(^setIndexDisplayMode)(UIScrollViewIndexDisplayMode) API_AVAILABLE(tvos(10.2));
@property (nonatomic,readonly) UITableView *(^setDelaysContentTouches)(BOOL);
@property (nonatomic,readonly) UITableView *(^setCanCancelContentTouches)(BOOL);
@property (nonatomic,readonly) UITableView *(^setMinimumZoomScale)(CGFloat);
@property (nonatomic,readonly) UITableView *(^setMaximumZoomScale)(CGFloat);
@property (nonatomic,readonly) UITableView *(^setZoomScale)(CGFloat) API_AVAILABLE(ios(3.0));
@property (nonatomic,readonly) UITableView *(^setBouncesZoom)(BOOL);
@property (nonatomic,readonly) UITableView *(^setScrollsToTop)(BOOL) API_UNAVAILABLE(tvos);
@property (nonatomic,readonly) UITableView *(^setKeyboardDismissMode)(UIScrollViewKeyboardDismissMode) API_AVAILABLE(ios(7.0));
@property (nonatomic,readonly) UITableView *(^setRefreshControl)(UIRefreshControl *) API_AVAILABLE(ios(10.0)) API_UNAVAILABLE(tvos);

@end

