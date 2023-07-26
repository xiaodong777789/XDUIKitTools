//
//  UICollectionView+DSL.h
//  SpeculateVolunteer
//
//  Created by CYQF on 2023/7/10.
//

#import <UIKit/UIKit.h>
#if __has_include(<Masonry/Masonry.h>)
#import <Masonry/Masonry.h>
#endif
NS_ASSUME_NONNULL_BEGIN

@interface UICollectionView (DSL)
//------------父类属性-----------
@property (nonatomic,readonly) UICollectionView *(^after)(void (^)(UICollectionView *textView));
@property (nonatomic,readonly) UICollectionView *(^setBackgroundColor)(UIColor *);
@property (nonatomic,readonly) UICollectionView *(^setBackgroundImage)(UIImage *);
@property (nonatomic,readonly) UICollectionView *(^setUserInteractionEnabled)(BOOL);
@property (nonatomic,readonly) UICollectionView *(^setContentMode)(UIViewContentMode);
@property (nonatomic,readonly) UICollectionView *(^setFrame)(CGRect);
@property (nonatomic,readonly) UICollectionView *(^setX)(CGFloat);
@property (nonatomic,readonly) UICollectionView *(^setY)(CGFloat);
@property (nonatomic,readonly) UICollectionView *(^setWidth)(CGFloat);
@property (nonatomic,readonly) UICollectionView *(^setHeight)(CGFloat);
@property (nonatomic,readonly) UICollectionView *(^setOrigin)(CGPoint);
@property (nonatomic,readonly) UICollectionView *(^setSize)(CGSize);
@property (nonatomic,readonly) UICollectionView *(^setCenter)(CGPoint);
@property (nonatomic,readonly) UICollectionView *(^setCenterX)(CGFloat);
@property (nonatomic,readonly) UICollectionView *(^setCenterY)(CGFloat);
@property (nonatomic,readonly) UICollectionView *(^setAlpha)(CGFloat);
@property (nonatomic,readonly) UICollectionView *(^setHidden)(BOOL);
@property (nonatomic,readonly) UICollectionView *(^setClipsToBounds)(BOOL);
@property (nonatomic,readonly) UICollectionView *(^setTag)(NSInteger);
@property (nonatomic,readonly) UICollectionView *(^setBorderColor)(UIColor *);
@property (nonatomic,readonly) UICollectionView *(^setBorderWidth)(CGFloat);
@property (nonatomic,readonly) UICollectionView *(^setShadowColor)(UIColor *);
@property (nonatomic,readonly) UICollectionView *(^setShadowOffset)(CGSize);
@property (nonatomic,readonly) UICollectionView *(^setShadowPath)(CGPathRef);
@property (nonatomic,readonly) UICollectionView *(^setShadowRadius)(CGFloat);
@property (nonatomic,readonly) UICollectionView *(^setShadowOpacity)(CGFloat);
@property (nonatomic,readonly) UICollectionView *(^setCornerRadius)(CGFloat);
@property (nonatomic,readonly) UICollectionView *(^addTapGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UICollectionView *(^addLongPressGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UICollectionView *(^addSwipeGestureRecognizer)(id, SEL,UISwipeGestureRecognizerDirection);
@property (nonatomic,readonly) UICollectionView *(^removeGestureRecognizers)(void);

#if __has_include (<Masonry/Masonry.h>)
@property (nonatomic,readonly) UICollectionView *(^makeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UICollectionView *(^remakeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UICollectionView *(^updateConstraint)(void (^)(MASConstraintMaker *make));
#endif

///-----------UIScrollView------------
@property (nonatomic,readonly) UICollectionView *(^setContentOffset)(CGPoint);
@property (nonatomic,readonly) UICollectionView *(^setContentSize)(CGSize);
@property (nonatomic,readonly) UICollectionView *(^setContentInset)(UIEdgeInsets);
@property (nonatomic,readonly) UICollectionView *(^setContentInsetAdjustmentBehavior)(UIScrollViewContentInsetAdjustmentBehavior) API_AVAILABLE(ios(11.0),tvos(11.0));
@property (nonatomic,readonly) UICollectionView *(^setDirectionalLockEnabled)(BOOL);
@property (nonatomic,readonly) UICollectionView *(^setBounces)(BOOL);
@property (nonatomic,readonly) UICollectionView *(^setAlwaysBounceVertical)(BOOL);
@property (nonatomic,readonly) UICollectionView *(^setAlwaysBounceHorizontal)(BOOL);
@property (nonatomic,readonly) UICollectionView *(^setPagingEnabled)(BOOL) API_UNAVAILABLE(tvos);
@property (nonatomic,readonly) UICollectionView *(^setScrollEnabled)(BOOL);
@property (nonatomic,readonly) UICollectionView *(^setShowsVerticalScrollIndicator)(BOOL);
@property (nonatomic,readonly) UICollectionView *(^setShowsHorizontalScrollIndicator)(BOOL);
@property (nonatomic,readonly) UICollectionView *(^setShowsScrollIndicator)(BOOL);
@property (nonatomic,readonly) UICollectionView *(^setIndicatorStyle)(UIScrollViewIndicatorStyle);
@property (nonatomic,readonly) UICollectionView *(^setVerticalScrollIndicatorInsets)(UIEdgeInsets) API_AVAILABLE(ios(11.1), tvos(11.1));
@property (nonatomic,readonly) UICollectionView *(^setHorizontalScrollIndicatorInsets)(UIEdgeInsets) API_AVAILABLE(ios(11.1), tvos(11.1));
@property (nonatomic,readonly) UICollectionView *(^setDecelerationRate)(UIScrollViewDecelerationRate) API_AVAILABLE(ios(3.0));
@property (nonatomic,readonly) UICollectionView *(^setIndexDisplayMode)(UIScrollViewIndexDisplayMode) API_AVAILABLE(tvos(10.2));
@property (nonatomic,readonly) UICollectionView *(^setDelaysContentTouches)(BOOL);
@property (nonatomic,readonly) UICollectionView *(^setCanCancelContentTouches)(BOOL);
@property (nonatomic,readonly) UICollectionView *(^setMinimumZoomScale)(CGFloat);
@property (nonatomic,readonly) UICollectionView *(^setMaximumZoomScale)(CGFloat);
@property (nonatomic,readonly) UICollectionView *(^setZoomScale)(CGFloat) API_AVAILABLE(ios(3.0));
@property (nonatomic,readonly) UICollectionView *(^setBouncesZoom)(BOOL);
@property (nonatomic,readonly) UICollectionView *(^setScrollsToTop)(BOOL) API_UNAVAILABLE(tvos);
@property (nonatomic,readonly) UICollectionView *(^setKeyboardDismissMode)(UIScrollViewKeyboardDismissMode) API_AVAILABLE(ios(7.0));
@property (nonatomic,readonly) UICollectionView *(^setRefreshControl)(UIRefreshControl *) API_AVAILABLE(ios(10.0)) API_UNAVAILABLE(tvos);

@end

NS_ASSUME_NONNULL_END
