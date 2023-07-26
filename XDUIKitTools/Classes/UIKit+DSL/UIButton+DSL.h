//
//  UIButton+DSL.h
//  SCTests
//
//  Created by CYQF on 2022/11/21.
//

#import <UIKit/UIKit.h>

@interface UIButton (DSL)

///------------父类属性-----------
@property (nonatomic,readonly) UIButton *(^after)(void (^)(UIButton *button));
@property (nonatomic,readonly) UIButton *(^setBackgroundColor)(UIColor *);
@property (nonatomic,readonly) UIButton *(^setUserInteractionEnabled)(BOOL);
@property (nonatomic,readonly) UIButton *(^setContentMode)(UIViewContentMode);
@property (nonatomic,readonly) UIButton *(^setFrame)(CGRect);
@property (nonatomic,readonly) UIButton *(^setX)(CGFloat);
@property (nonatomic,readonly) UIButton *(^setY)(CGFloat);
@property (nonatomic,readonly) UIButton *(^setWidth)(CGFloat);
@property (nonatomic,readonly) UIButton *(^setHeight)(CGFloat);
@property (nonatomic,readonly) UIButton *(^setOrigin)(CGPoint);
@property (nonatomic,readonly) UIButton *(^setSize)(CGSize);
@property (nonatomic,readonly) UIButton *(^setCenter)(CGPoint);
@property (nonatomic,readonly) UIButton *(^setCenterX)(CGFloat);
@property (nonatomic,readonly) UIButton *(^setCenterY)(CGFloat);
@property (nonatomic,readonly) UIButton *(^setAlpha)(CGFloat);
@property (nonatomic,readonly) UIButton *(^setHidden)(BOOL);
@property (nonatomic,readonly) UIButton *(^setClipsToBounds)(BOOL);
@property (nonatomic,readonly) UIButton *(^setTag)(NSInteger);
@property (nonatomic,readonly) UIButton *(^setBorderColor)(UIColor *);
@property (nonatomic,readonly) UIButton *(^setBorderWidth)(CGFloat);
@property (nonatomic,readonly) UIButton *(^setShadowColor)(UIColor *);
@property (nonatomic,readonly) UIButton *(^setShadowOffset)(CGSize);
@property (nonatomic,readonly) UIButton *(^setShadowPath)(CGPathRef);
@property (nonatomic,readonly) UIButton *(^setShadowRadius)(CGFloat);
@property (nonatomic,readonly) UIButton *(^setShadowOpacity)(CGFloat);
@property (nonatomic,readonly) UIButton *(^setCornerRadius)(CGFloat);
@property (nonatomic,readonly) UIButton *(^addTapGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UIButton *(^addLongPressGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UIButton *(^addSwipeGestureRecognizer)(id, SEL,UISwipeGestureRecognizerDirection);
@property (nonatomic,readonly) UIButton *(^removeGestureRecognizers)(void);

#if __has_include (<Masonry/Masonry.h>)
@property (nonatomic,readonly) UIButton *(^makeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UIButton *(^remakeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UIButton *(^updateConstraint)(void (^)(MASConstraintMaker *make));
#endif

///------------UIControl---------------
@property (nonatomic,readonly) UIButton *(^setEnabled)(BOOL);
@property (nonatomic,readonly) UIButton *(^setSelected)(BOOL);
@property (nonatomic,readonly) UIButton *(^setHighlighted)(BOOL);

@property (nonatomic,readonly) UIButton *(^setContentHorizontalAlignment)(UIControlContentHorizontalAlignment);
@property (nonatomic,readonly) UIButton *(^setContentVerticalAlignment)(UIControlContentVerticalAlignment);

@property (nonatomic,readonly) UIButton *(^setContextMenuInteractionEnabled)(BOOL) API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(watchos, tvos);
@property (nonatomic,readonly) UIButton *(^setShowsMenuAsPrimaryAction)(BOOL) API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(watchos, tvos);
@property (nonatomic,readonly) UIButton *(^setToolTip)(NSString *) API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(watchos, tvos);

@property (nonatomic,readonly) BOOL(^beginTrackingWithTouchAndEvent)(UITouch *,UIEvent *);
@property (nonatomic,readonly) BOOL(^continueTrackingWithTouchAndEvent)(UITouch *,UIEvent *);
@property (nonatomic,readonly) void(^endTrackingWithTouchAndEvent)(UITouch *,UIEvent *);
@property (nonatomic,readonly) void(^cancelTrackingWithEvent)(UIEvent *);


@property (nonatomic,readonly) UIButton *(^addTargetWithActionForControlEvents)(id,SEL,UIControlEvents);
@property (nonatomic,readonly) UIButton *(^removeTargetWithActionForControlEvents)(id,SEL,UIControlEvents);

///-----------UIButton------------------
@property (nonatomic,readonly) UIButton *(^setConfiguration)(UIButtonConfiguration *) API_AVAILABLE(ios(15.0), tvos(15.0)) API_UNAVAILABLE(watchos);
@property (nonatomic,readonly) void(^setNeedsUpdateConfiguration)(void) API_AVAILABLE(ios(15.0), tvos(15.0)) API_UNAVAILABLE(watchos);
@property (nonatomic,readonly) void(^updateConfiguration)(void) API_AVAILABLE(ios(15.0), tvos(15.0)) API_UNAVAILABLE(watchos);
@property (nonatomic,readonly) UIButton *(^setConfigurationUpdateHandler)(UIButtonConfigurationUpdateHandler) API_AVAILABLE(ios(15.0), tvos(15.0)) API_UNAVAILABLE(watchos);
@property (nonatomic,readonly) UIButton *(^setAutomaticallyUpdatesConfiguration)(BOOL) API_AVAILABLE(ios(15.0), tvos(15.0)) API_UNAVAILABLE(watchos);

@property (nonatomic,readonly) UIButton *(^setTintColor)(UIColor *) API_AVAILABLE(ios(5.0));

@property (nonatomic,readonly) UIButton *(^setRole)(UIButtonRole) API_AVAILABLE(ios(14.0));

@property (nonatomic,readonly) UIButton *(^setPointerInteractionEnabled)(BOOL) API_AVAILABLE(ios(13.4)) API_UNAVAILABLE(watchos, tvos);

@property (nonatomic,readonly) UIButton *(^setPointerStyleProvider)(UIButtonPointerStyleProvider) API_AVAILABLE(ios(13.4)) API_UNAVAILABLE(watchos, tvos) NS_REFINED_FOR_SWIFT;

@property (nonatomic,readonly) UIButton *(^setMenu)(UIMenu *) API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(watchos, tvos);

@property (nonatomic,readonly) UIButton *(^setPreferredMenuElementOrder)(UIContextMenuConfigurationElementOrder) API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(watchos, tvos);

@property (nonatomic,readonly) UIButton *(^setChangesSelectionAsPrimaryAction)(BOOL) API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(watchos, tvos);


@property (nonatomic,readonly) UIButton *(^setTitle)(NSString *);
@property (nonatomic,readonly) UIButton *(^setTitleForState)(NSString *,UIControlState);

@property (nonatomic,readonly) UIButton *(^setAttributedTitle)(NSAttributedString *) API_AVAILABLE(ios(6.0));
@property (nonatomic,readonly) UIButton *(^setAttributedTitleForState)(NSAttributedString *,UIControlState) API_AVAILABLE(ios(6.0));

@property (nonatomic,readonly) UIButton *(^setFont)(UIFont *);
@property (nonatomic,readonly) UIButton *(^setSystemFontOfSize)(CGFloat);
@property (nonatomic,readonly) UIButton *(^setBoldSystemFontOfSize)(CGFloat);

@property (nonatomic,readonly) UIButton *(^setTitleColor)(UIColor *);
@property (nonatomic,readonly) UIButton *(^setTitleColorForState)(UIColor *,UIControlState);


@property (nonatomic,readonly) UIButton *(^setTitleShadowColor)(UIColor *);
@property (nonatomic,readonly) UIButton *(^setTitleShadowColorForState)(UIColor *,UIControlState);

@property (nonatomic,readonly) UIButton *(^setImage)(UIImage *);
@property (nonatomic,readonly) UIButton *(^setImageForState)(UIImage *,UIControlState);

@property (nonatomic,readonly) UIButton *(^setBackgroundImage)(UIImage *);
@property (nonatomic,readonly) UIButton *(^setBackgroundImageForState)(UIImage *,UIControlState);

@property (nonatomic,readonly) UIButton *(^setPreferredSymbolConfiguration)(UIImageSymbolConfiguration *) UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(13.0), tvos(13.0), watchos(6.0));
@property (nonatomic,readonly) UIButton *(^setPreferredSymbolConfigurationForImageInState)(UIImageSymbolConfiguration *,UIControlState) UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(13.0), tvos(13.0), watchos(6.0));


@property (nonatomic,readonly) NSString *(^titleForState)(UIControlState);
@property (nonatomic,readonly) UIColor *(^titleColorForState)(UIControlState);
@property (nonatomic,readonly) UIColor *(^titleShadowColorForState)(UIControlState);
@property (nonatomic,readonly) UIImage *(^imageForState)(UIControlState);
@property (nonatomic,readonly) UIImage *(^backgroundImageForState)(UIControlState);
@property (nonatomic,readonly) UIImageSymbolConfiguration *(^preferredSymbolConfigurationForImageInState)(UIControlState) API_AVAILABLE(ios(13.0), tvos(13.0), watchos(6.0));
@property (nonatomic,readonly) NSAttributedString *(^attributedTitleForState)(UIControlState) API_AVAILABLE(ios(6.0));

@property (nonatomic,readonly) UIButton *(^addTargetWithActionForTouchUpInside)(id,SEL);

@property (nonatomic,readonly) UIButton *(^setContentEdgeInsets)(UIEdgeInsets) API_DEPRECATED("This property is ignored when using UIButtonConfiguration", ios(2.0,15.0), tvos(2.0,15.0)) UI_APPEARANCE_SELECTOR;

@property (nonatomic,readonly) UIButton *(^setImageEdgeInsets)(UIEdgeInsets) API_DEPRECATED("This property is ignored when using UIButtonConfiguration", ios(2.0,15.0), tvos(2.0,15.0));

@property (nonatomic,readonly) UIButton *(^setTitleEdgeInsets)(UIEdgeInsets) API_DEPRECATED("This property is ignored when using UIButtonConfiguration", ios(2.0,15.0), tvos(2.0,15.0));

@end
