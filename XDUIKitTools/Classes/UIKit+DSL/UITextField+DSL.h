//
//  UITextField+DSL.h
//  SCTests
//
//  Created by CYQF on 2022/11/21.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
@interface UITextField (DSL)

///------------父类属性-----------
@property (nonatomic,readonly) UITextField *(^after)(void (^)(UITextField *textField));
@property (nonatomic,readonly) UITextField *(^setBackgroundColor)(UIColor *);
@property (nonatomic,readonly) UITextField *(^setBackgroundImage)(UIImage *);
@property (nonatomic,readonly) UITextField *(^setUserInteractionEnabled)(BOOL);
@property (nonatomic,readonly) UITextField *(^setContentMode)(UIViewContentMode);
@property (nonatomic,readonly) UITextField *(^setFrame)(CGRect);
@property (nonatomic,readonly) UITextField *(^setX)(CGFloat);
@property (nonatomic,readonly) UITextField *(^setY)(CGFloat);
@property (nonatomic,readonly) UITextField *(^setWidth)(CGFloat);
@property (nonatomic,readonly) UITextField *(^setHeight)(CGFloat);
@property (nonatomic,readonly) UITextField *(^setOrigin)(CGPoint);
@property (nonatomic,readonly) UITextField *(^setSize)(CGSize);
@property (nonatomic,readonly) UITextField *(^setCenter)(CGPoint);
@property (nonatomic,readonly) UITextField *(^setCenterX)(CGFloat);
@property (nonatomic,readonly) UITextField *(^setCenterY)(CGFloat);
@property (nonatomic,readonly) UITextField *(^setAlpha)(CGFloat);
@property (nonatomic,readonly) UITextField *(^setHidden)(BOOL);
@property (nonatomic,readonly) UITextField *(^setClipsToBounds)(BOOL);
@property (nonatomic,readonly) UITextField *(^setTag)(NSInteger);
@property (nonatomic,readonly) UITextField *(^setBorderColor)(UIColor *);
@property (nonatomic,readonly) UITextField *(^setBorderWidth)(CGFloat);
@property (nonatomic,readonly) UITextField *(^setShadowColor)(UIColor *);
@property (nonatomic,readonly) UITextField *(^setShadowOffset)(CGSize);
@property (nonatomic,readonly) UITextField *(^setShadowPath)(CGPathRef);
@property (nonatomic,readonly) UITextField *(^setShadowRadius)(CGFloat);
@property (nonatomic,readonly) UITextField *(^setShadowOpacity)(CGFloat);
@property (nonatomic,readonly) UITextField *(^setCornerRadius)(CGFloat);
@property (nonatomic,readonly) UITextField *(^addTapGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UITextField *(^addLongPressGestureRecognizer)(id,SEL);
@property (nonatomic,readonly) UITextField *(^addSwipeGestureRecognizer)(id, SEL,UISwipeGestureRecognizerDirection);
@property (nonatomic,readonly) UITextField *(^removeGestureRecognizers)(void);

@property (nonatomic,readonly) UITextField *(^makeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UITextField *(^remakeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UITextField *(^updateConstraint)(void (^)(MASConstraintMaker *make));

///-------------UITextField----------------
@property (nonatomic,readonly) UITextField *(^setDelegate)(id<UITextFieldDelegate>);

/// 设置字体
@property (nonatomic,readonly) UITextField *(^setFont)(UIFont *);
@property (nonatomic,readonly) UITextField *(^setSystemFontOfSize)(CGFloat);
@property (nonatomic,readonly) UITextField *(^setBoldSystemFontOfSize)(CGFloat);

/// 设置文字
@property (nonatomic,readonly) UITextField *(^setText)(NSString *);
@property (nonatomic,readonly) UITextField *(^setTextColor)(UIColor *);

@property (nonatomic,readonly) UITextField *(^setTextAlignment)(NSTextAlignment);

@property (nonatomic,readonly) UITextField *(^setAttributedString)(NSAttributedString *);

///样式
@property (nonatomic,readonly) UITextField *(^setBorderStyle)(UITextBorderStyle);

 
@property (nonatomic,readonly) UITextField *(^setReturnKeyType)(UIReturnKeyType);
@property (nonatomic,readonly) UITextField *(^setKeyboardType)(UIKeyboardType);
 
@property (nonatomic,readonly) UITextField *(^setDefaultTextAttributes)(NSDictionary<NSAttributedStringKey,id> *) API_AVAILABLE(ios(7.0));


@property (nonatomic,readonly) UITextField *(^setPlaceholder)(NSString *);
@property (nonatomic,readonly) UITextField *(^setAttributedPlaceholder)(NSAttributedString *);
@property (nonatomic,readonly) UITextField *(^setClearsOnBeginEditing)(BOOL);

@property (nonatomic,readonly) UITextField *(^setMinimumFontSize)(CGFloat);

@property (nonatomic,readonly) UITextField *(^setAdjustsFontSizeToFitWidth)(BOOL);

@property (nonatomic,readonly) UITextField *(^setBackground)(UIImage *);
@property (nonatomic,readonly) UITextField *(^setDisabledBackground)(UIImage *);


@property (nonatomic,readonly) UITextField *(^setAllowsEditingTextAttributes)(BOOL) API_AVAILABLE(ios(6.0));

@property (nonatomic,readonly) UITextField *(^setTypingAttributes)(NSDictionary<NSAttributedStringKey,id> *) API_AVAILABLE(ios(6.0));


@property (nonatomic,readonly) UITextField *(^setClearButtonMode)(UITextFieldViewMode);

@property (nonatomic,readonly) UITextField *(^setLeftView)(UIView *);
@property (nonatomic,readonly) UITextField *(^setLeftViewMode)(UITextFieldViewMode);
@property (nonatomic,readonly) UITextField *(^setRightView)(UIView *);
@property (nonatomic,readonly) UITextField *(^setRightViewMode)(UITextFieldViewMode);

@property (nonatomic,readonly) UITextField *(^setClearsOnInsertion)(BOOL) API_AVAILABLE(ios(6.0));

@property (nonatomic,readonly) UITextField *(^setInteractionState)(id) API_AVAILABLE(ios(15.0));


@end


