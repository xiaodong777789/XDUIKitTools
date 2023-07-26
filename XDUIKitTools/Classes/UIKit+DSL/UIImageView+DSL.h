//
//  UIImageView+DSL.h
//  VoluntaryReportNew
//
//  Created by CYQF on 2023/3/23.
//

#import <UIKit/UIKit.h>

@interface UIImageView (DSL)

///------------父类属性-----------
@property (nonatomic,readonly) UIImageView *(^after)(void (^)(UIImageView *imageView));
@property (nonatomic,readonly) UIImageView *(^setBackgroundColor)(UIColor *);
@property (nonatomic,readonly) UIImageView *(^setBackgroundImage)(UIImage *);
@property (nonatomic,readonly) UIImageView *(^setUserInteractionEnabled)(BOOL);
@property (nonatomic,readonly) UIImageView *(^setContentMode)(UIViewContentMode);
@property (nonatomic,readonly) UIImageView *(^setFrame)(CGRect);
@property (nonatomic,readonly) UIImageView *(^setX)(CGFloat);
@property (nonatomic,readonly) UIImageView *(^setY)(CGFloat);
@property (nonatomic,readonly) UIImageView *(^setWidth)(CGFloat);
@property (nonatomic,readonly) UIImageView *(^setHeight)(CGFloat);
@property (nonatomic,readonly) UIImageView *(^setOrigin)(CGPoint);
@property (nonatomic,readonly) UIImageView *(^setSize)(CGSize);
@property (nonatomic,readonly) UIImageView *(^setCenter)(CGPoint);
@property (nonatomic,readonly) UIImageView *(^setCenterX)(CGFloat);
@property (nonatomic,readonly) UIImageView *(^setCenterY)(CGFloat);
@property (nonatomic,readonly) UIImageView *(^setAlpha)(CGFloat);
@property (nonatomic,readonly) UIImageView *(^setHidden)(BOOL);
@property (nonatomic,readonly) UIImageView *(^setClipsToBounds)(BOOL);
@property (nonatomic,readonly) UIImageView *(^setTag)(NSInteger);
@property (nonatomic,readonly) UIImageView *(^setBorderColor)(UIColor *);
@property (nonatomic,readonly) UIImageView *(^setBorderWidth)(CGFloat);
@property (nonatomic,readonly) UIImageView *(^setShadowColor)(UIColor *);
@property (nonatomic,readonly) UIImageView *(^setShadowOffset)(CGSize);
@property (nonatomic,readonly) UIImageView *(^setShadowPath)(CGPathRef);
@property (nonatomic,readonly) UIImageView *(^setShadowRadius)(CGFloat);
@property (nonatomic,readonly) UIImageView *(^setShadowOpacity)(CGFloat);
@property (nonatomic,readonly) UIImageView *(^setCornerRadius)(CGFloat);
@property (nonatomic,readonly) UIImageView *(^addTapGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UIImageView *(^addLongPressGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UIImageView *(^addSwipeGestureRecognizer)(id, SEL,UISwipeGestureRecognizerDirection);
@property (nonatomic,readonly) UIImageView *(^removeGestureRecognizers)(void);

#if __has_include (<Masonry/Masonry.h>)
@property (nonatomic,readonly) UIImageView *(^makeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UIImageView *(^remakeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UIImageView *(^updateConstraint)(void (^)(MASConstraintMaker *make));
#endif


///-----------UITextView------------
@property (nonatomic,readonly) UIImageView *(^setImage)(UIImage *);
@property (nonatomic,readonly) UIImageView *(^setHighlightedImage)(UIImage *) API_AVAILABLE(ios(3.0)); // default is nil
@property (nonatomic,readonly) UIImageView *(^setPreferredSymbolConfiguration)(UIImageSymbolConfiguration *) API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));
@property (nonatomic,readonly) UIImageView *(^setHighlighted)(BOOL) API_AVAILABLE(ios(3.0)); // default is NO
@property (nonatomic,readonly) UIImageView *(^setAnimationImages)(NSArray<UIImage *> *);
@property (nonatomic,readonly) UIImageView *(^setHighlightedAnimationImages)(NSArray<UIImage *> *) API_AVAILABLE(ios(3.0));
@property (nonatomic,readonly) UIImageView *(^setAnimationDuration)(NSTimeInterval); // for one cycle of images. default is number of images * 1/30th of a second (i.e. 30 fps)
@property (nonatomic,readonly) UIImageView *(^setAnimationRepeatCount)(NSInteger); // 0 means infinite (default is 0)

@end

