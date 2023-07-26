//
//  UIView+DSL.h
//  SCTests
//
//  Created by CYQF on 2022/11/21.
//

#import <UIKit/UIKit.h>
#if __has_include(<Masonry/Masonry.h>)
#import <Masonry/Masonry.h>
#endif
@interface UIView (DSL)

///添加约束后，需要自身frame计算时需要延迟调用可以再after内调用
@property (nonatomic,readonly) UIView *(^after)(void (^)(UIView *view));

///背景
@property (nonatomic,readonly) UIView *(^setBackgroundColor)(UIColor *);

@property (nonatomic,readonly) UIView *(^setBackgroundImage)(UIImage *);

@property (nonatomic,readonly) UIView *(^setUserInteractionEnabled)(BOOL);

@property (nonatomic,readonly) UIView *(^setContentMode)(UIViewContentMode);

///Frame
@property (nonatomic,readonly) UIView *(^setFrame)(CGRect);
@property (nonatomic,readonly) UIView *(^setX)(CGFloat);
@property (nonatomic,readonly) UIView *(^setY)(CGFloat);
@property (nonatomic,readonly) UIView *(^setWidth)(CGFloat);
@property (nonatomic,readonly) UIView *(^setHeight)(CGFloat);
@property (nonatomic,readonly) UIView *(^setOrigin)(CGPoint);
@property (nonatomic,readonly) UIView *(^setSize)(CGSize);
@property (nonatomic,readonly) UIView *(^setCenter)(CGPoint);
@property (nonatomic,readonly) UIView *(^setCenterX)(CGFloat);
@property (nonatomic,readonly) UIView *(^setCenterY)(CGFloat);

///透明隐藏
@property (nonatomic,readonly) UIView *(^setAlpha)(CGFloat);
@property (nonatomic,readonly) UIView *(^setHidden)(BOOL);

@property (nonatomic,readonly) UIView *(^setClipsToBounds)(BOOL);

///标签
@property (nonatomic,readonly) UIView *(^setTag)(NSInteger);

///边框
@property (nonatomic,readonly) UIView *(^setBorderColor)(UIColor *);
@property (nonatomic,readonly) UIView *(^setBorderWidth)(CGFloat);

///阴影
@property (nonatomic,readonly) UIView *(^setShadowColor)(UIColor *);
@property (nonatomic,readonly) UIView *(^setShadowOffset)(CGSize);
@property (nonatomic,readonly) UIView *(^setShadowPath)(CGPathRef);
@property (nonatomic,readonly) UIView *(^setShadowRadius)(CGFloat);
@property (nonatomic,readonly) UIView *(^setShadowOpacity)(CGFloat);

///圆角
@property (nonatomic,readonly) UIView *(^setCornerRadius)(CGFloat);

/// 添加单击手势
@property (nonatomic,readonly) UIView *(^addTapGestureRecognizer)(id,SEL);

/// 添加长按手势
@property (nonatomic,readonly) UIView *(^addLongPressGestureRecognizer)(id,SEL);

/// 添加清扫手势
@property (nonatomic,readonly) UIView *(^addSwipeGestureRecognizer)(id, SEL,UISwipeGestureRecognizerDirection);

/// 删除视图所有手势
@property (nonatomic,readonly) UIView *(^removeGestureRecognizers)(void);

#if __has_include (<Masonry/Masonry.h>)
///约束     结合Masonry实现
///添加约束后会影响frame操作，用约束修改frame
///必须先add到父视图上，在添加约束
@property (nonatomic,readonly) UIView *(^makeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UIView *(^remakeConstraint)(void (^)(MASConstraintMaker *make));
@property (nonatomic,readonly) UIView *(^updateConstraint)(void (^)(MASConstraintMaker *make));
#endif

@end

#if __has_include(<Masonry/Masonry.h>)
///Masonry相对于父视图的约束
@interface MASConstraint (SuperView)
///相对于父视图的约束 block equal
@property (nonatomic,readonly) MASConstraint *(^mas_equalTo)(id);
@property (nonatomic,readonly) MASConstraint *(^equalToSuperview)(void);
@property (nonatomic,readonly) MASConstraint *(^mas_equalToSuperview)(void);
@end
#endif
