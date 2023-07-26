//
//  UILabel+DSL.h
//  SCTests
//
//  Created by CYQF on 2022/11/21.
//

#import <UIKit/UIKit.h>

@interface UILabel (DSL)

///------------父类属性-----------
@property (nonatomic,readonly) UILabel *(^after)(void (^)(UILabel *label));
@property (nonatomic,readonly) UILabel *(^setBackgroundColor)(UIColor *);
@property (nonatomic,readonly) UILabel *(^setBackgroundImage)(UIImage *);
@property (nonatomic,readonly) UILabel *(^setUserInteractionEnabled)(BOOL);
@property (nonatomic,readonly) UILabel *(^setContentMode)(UIViewContentMode);
@property (nonatomic,readonly) UILabel *(^setFrame)(CGRect);
@property (nonatomic,readonly) UILabel *(^setX)(CGFloat);
@property (nonatomic,readonly) UILabel *(^setY)(CGFloat);
@property (nonatomic,readonly) UILabel *(^setWidth)(CGFloat);
@property (nonatomic,readonly) UILabel *(^setHeight)(CGFloat);
@property (nonatomic,readonly) UILabel *(^setOrigin)(CGPoint);
@property (nonatomic,readonly) UILabel *(^setSize)(CGSize);
@property (nonatomic,readonly) UILabel *(^setCenter)(CGPoint);
@property (nonatomic,readonly) UILabel *(^setCenterX)(CGFloat);
@property (nonatomic,readonly) UILabel *(^setCenterY)(CGFloat);
@property (nonatomic,readonly) UILabel *(^setAlpha)(CGFloat);
@property (nonatomic,readonly) UILabel *(^setHidden)(BOOL);
@property (nonatomic,readonly) UILabel *(^setClipsToBounds)(BOOL);
@property (nonatomic,readonly) UILabel *(^setTag)(NSInteger);
@property (nonatomic,readonly) UILabel *(^setBorderColor)(UIColor *);
@property (nonatomic,readonly) UILabel *(^setBorderWidth)(CGFloat);
@property (nonatomic,readonly) UILabel *(^setShadowColor)(UIColor *);
@property (nonatomic,readonly) UILabel *(^setShadowOffset)(CGSize);
@property (nonatomic,readonly) UILabel *(^setShadowPath)(CGPathRef);
@property (nonatomic,readonly) UILabel *(^setShadowRadius)(CGFloat);
@property (nonatomic,readonly) UILabel *(^setShadowOpacity)(CGFloat);
@property (nonatomic,readonly) UILabel *(^setCornerRadius)(CGFloat);
@property (nonatomic,readonly) UILabel *(^addTapGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UILabel *(^addLongPressGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UILabel *(^addSwipeGestureRecognizer)(id, SEL,UISwipeGestureRecognizerDirection);
@property (nonatomic,readonly) UILabel *(^removeGestureRecognizers)(void);

#if __has_include (<Masonry/Masonry.h>)
@property (nonatomic,readonly) UILabel *(^makeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UILabel *(^remakeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UILabel *(^updateConstraint)(void (^)(MASConstraintMaker *make));
#endif

///-------------UILabel---------------
/// 设置字体
@property (nonatomic,readonly) UILabel *(^setFont)(UIFont *);
@property (nonatomic,readonly) UILabel *(^setSystemFontOfSize)(CGFloat);
@property (nonatomic,readonly) UILabel *(^setBoldSystemFontOfSize)(CGFloat);
@property (nonatomic,readonly) UILabel *(^setBoldSystemFontOfSizeAndWeight)(CGFloat,UIFontWeight);

/// 设置文字
@property (nonatomic,readonly) UILabel *(^setText)(NSString *);
@property (nonatomic,readonly) UILabel *(^setTextColor)(UIColor *);

@property (nonatomic,readonly) UILabel *(^setNumberOfLines)(NSInteger);

@property (nonatomic,readonly) UILabel *(^setTextAlignment)(NSTextAlignment);

@property (nonatomic,readonly) UILabel *(^setAttributedString)(NSAttributedString *);

@property (nonatomic,readonly) UILabel *(^setLineBreakMode)(NSLineBreakMode);


@property (nonatomic,readonly) UILabel *(^setHighlightedTextColor)(UIColor *) UI_APPEARANCE_SELECTOR;
@property (nonatomic,readonly) UILabel *(^setHighlighted)(BOOL);

@property (nonatomic,readonly) UILabel *(^setEnabled)(BOOL);

@property (nonatomic,readonly) UILabel *(^setAdjustsFontSizeToFitWidth)(BOOL);

@property (nonatomic,readonly) UILabel *(^setBaselineAdjustment)(UIBaselineAdjustment);

@property (nonatomic,readonly) UILabel *(^setMinimumScaleFactor)(CGFloat) API_AVAILABLE(ios(6.0));

@property (nonatomic,readonly) UILabel *(^setAllowsDefaultTighteningForTruncation)(BOOL) API_AVAILABLE(ios(9.0));

@property (nonatomic,readonly) UILabel *(^setLineBreakStrategy)(NSLineBreakStrategy) API_AVAILABLE(ios(14.0), tvos(14.0), watchos(7.0));

@property (nonatomic,readonly) UILabel *(^setPreferredMaxLayoutWidth)(CGFloat) API_AVAILABLE(ios(6.0));

@property (nonatomic,readonly) UILabel *(^setEnablesMarqueeWhenAncestorFocused)(BOOL) API_AVAILABLE(tvos(12.0)) API_UNAVAILABLE(ios, watchos);

@property (nonatomic,readonly) UILabel *(^setShowsExpansionTextWhenTruncated)(BOOL) API_AVAILABLE(macCatalyst(15.0));
@end
