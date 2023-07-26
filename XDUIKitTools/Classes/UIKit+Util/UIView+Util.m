//
//  UIView+Util.m
//  VoluntaryReporting
//
//  Created by CYQF on 2022/11/14.
//  Copyright © 2022 CYQF. All rights reserved.
//

#import "UIView+Util.h"

@implementation UIView (AddSubUI)

- (__kindof UIView * (^)(Class))addSubView{
    return ^(Class class){
        id view = [[class alloc]init];
        NSAssert([view isKindOfClass:UIView.class], @"添加的视图必须为UIView及其子类");
        [self addSubview:view];
        return view;
    };
}

- (__kindof UIView * (^)(Class,NSInteger))insertSubViewAtIndex{
    return ^(Class class,NSInteger index){
        id view = [[class alloc]init];
        NSAssert([view isKindOfClass:UIView.class], @"添加的视图必须为UIView及其子类");
        [self insertSubview:view atIndex:index];
        return view;
    };
}

- (__kindof UIView * (^)(Class,UIView *))insertSubviewBelowSubview{
    return ^(Class class,UIView *subView){
        id view = [[class alloc]init];
        NSAssert([view isKindOfClass:UIView.class], @"添加的视图必须为UIView及其子类");
        [self insertSubview:view belowSubview:subView];
        return view;
    };
}

- (__kindof UIView * (^)(Class,UIView *))insertSubviewAboveSubview{
    return ^(Class class,UIView *subView){
        id view = [[class alloc]init];
        NSAssert([view isKindOfClass:UIView.class], @"添加的视图必须为UIView及其子类");
        [self insertSubview:view aboveSubview:subView];
        return view;
    };
}

@end

@implementation UIView (Util)

- (UIImage *(^)(void))toImage{
    return ^(){
        UIGraphicsBeginImageContext(self.bounds.size);
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        [self.layer renderInContext:ctx];
        UIImage * tImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return tImage;
    };
}
- (UIImage *(^)(CGRect))toImageWithFrame{
    return ^(CGRect rect){
        CGFloat scale = [UIScreen mainScreen].scale;
        UIGraphicsBeginImageContextWithOptions(self.frame.size, YES, scale);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSaveGState(context);
        UIRectClip(rect);
        [self.layer renderInContext:context];
        UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return theImage;
    };
}

- (UIView *(^)(UIRectCorner, CGSize))setCornerRadiusWithRectCornerAndSize{
    return ^(UIRectCorner corner, CGSize size){
        UIBezierPath * maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corner cornerRadii:size];
        CAShapeLayer * maskLayer = [[CAShapeLayer alloc] init];
        maskLayer.frame = self.bounds;
        maskLayer.path = maskPath.CGPath;
        self.layer.mask = maskLayer;
        return self;
    };
}

- (void(^)(void))removeFromSuperView{
    return ^(){
        [self removeFromSuperview];
    };
}

- (void (^)(UIView *))bringSubviewToFront{
    return ^(UIView *subView){
        [self bringSubviewToFront:subView];
    };
}

- (void (^)(UIView *))sendSubviewToBack{
    return ^(UIView *subView){
        [self sendSubviewToBack:subView];
    };
}

- (BOOL (^)(BOOL))endEditing{
    return ^(BOOL edit){
        return [self endEditing:edit];
    };
}

- (CGFloat)x{
    return self.frame.origin.x;
}

- (void)setX:(CGFloat)x{
    CGRect frame = self.frame;;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)y{
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y{
    CGRect frame = self.frame;;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)width{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;;
    frame.size.height = height;
    self.frame = frame;
}

- (CGPoint)origin{
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin{
    CGRect frame = self.frame;;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)size{
    return self.frame.size;
}

- (void)setSize:(CGSize)size{
    CGRect frame = self.frame;;
    frame.size = size;
    self.frame = frame;
}

- (CGFloat)centerX{
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerY{
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}


- (CGFloat)right{
    return self.frame.size.width + self.frame.origin.x;
}

- (void)setRight:(CGFloat)right{
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)bottom{
    return self.frame.size.height + self.frame.origin.y;
}

- (void)setBottom:(CGFloat)bottom{
    CGRect frame = self.frame;;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

@end
