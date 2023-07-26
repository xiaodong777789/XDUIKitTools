//
//  UIView+Util.h
//  VoluntaryReporting
//
//  Created by CYQF on 2022/11/14.
//  Copyright © 2022 CYQF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AddSubUI)

@property (nonatomic,readonly) __kindof UIView * (^addSubView)(Class);
@property (nonatomic,readonly) __kindof UIView * (^insertSubViewAtIndex)(Class,NSInteger);
@property (nonatomic,readonly) __kindof UIView * (^insertSubviewBelowSubview)(Class,UIView *);
@property (nonatomic,readonly) __kindof UIView * (^insertSubviewAboveSubview)(Class,UIView *);

@end


@interface UIView (Util)

@property (nonatomic,readonly) UIImage *(^toImage)(void);
@property (nonatomic,readonly) UIImage *(^toImageWithFrame)(CGRect);

/// 设置圆角
/// - Parameter RectCorner: 方向
/// - Parameter CGSize: 大小
@property (nonatomic,readonly) UIView *(^setCornerRadiusWithRectCornerAndSize)(UIRectCorner,CGSize);


@property (nonatomic,readonly) void (^removeFromSuperView)(void);
@property (nonatomic,readonly) void (^bringSubviewToFront)(UIView *);
@property (nonatomic,readonly) void (^sendSubviewToBack)(UIView *);
@property (nonatomic,readonly) BOOL (^endEditing)(BOOL);


@property (nonatomic,assign) CGFloat x;
@property (nonatomic,assign) CGFloat y;
@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat height;
@property (nonatomic,assign) CGPoint origin;
@property (nonatomic,assign) CGSize size;
@property (nonatomic,assign) CGFloat centerX;
@property (nonatomic,assign) CGFloat centerY;
@property (nonatomic,assign) CGFloat right;
@property (nonatomic,assign) CGFloat bottom;

@end
