//
//  UIView+DSL.m
//  SCTests
//
//  Created by CYQF on 2022/11/21.
//

#import "UIView+DSL.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UIView (DSL)
#pragma clang diagnostic pop

- (UIView *(^)(void (^)(UIView *)))after{
    return ^(void (^block)(UIView *)){
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, NSEC_PER_SEC * 0.02), dispatch_get_main_queue(), ^{
            block(self);
        });
        return self;
    };
}

- (UIView *(^)(UIColor *))setBackgroundColor{
    return ^(UIColor * color){
        self.backgroundColor = color;
        return self;
    };
}

- (UIView *(^)(UIImage *))setBackgroundImage{
    return ^(UIImage * img){
        self.layer.contents = (id)img.CGImage;
        return self;
    };
}

- (UIView *(^)(BOOL))setUserInteractionEnabled{
    return ^(BOOL enabled){
        self.userInteractionEnabled = enabled;
        return self;
    };
}

- (UIView *(^)(UIViewContentMode))setContentMode{
    return ^(UIViewContentMode mode){
        self.contentMode = mode;
        return self;
    };
}

- (UIView *(^)(CGRect))setFrame{
    return ^(CGRect frame){
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat))setX{
    return ^(CGFloat x){
        CGRect frame = self.frame;
        frame.origin.x = x;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat))setY{
    return ^(CGFloat y){
        CGRect frame = self.frame;
        frame.origin.y = y;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat))setWidth{
    return ^(CGFloat w){
        CGRect frame = self.frame;
        frame.size.width = w;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat))setHeight{
    return ^(CGFloat h){
        CGRect frame = self.frame;
        frame.size.height = h;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGPoint))setOrigin{
    return ^(CGPoint origin){
        CGRect frame = self.frame;
        frame.origin = origin;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGSize))setSize{
    return ^(CGSize size){
        CGRect frame = self.frame;
        frame.size = size;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGPoint))setCenter{
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}

- (UIView *(^)(CGFloat))setCenterX{
    return ^(CGFloat x){
        CGPoint center = self.center;
        center.x = x;
        self.center = center;
        return self;
    };
}

- (UIView *(^)(CGFloat))setCenterY{
    return ^(CGFloat y){
        CGPoint center = self.center;
        center.y = y;
        self.center = center;
        return self;
    };
}

- (UIView *(^)(CGFloat))setAlpha{
    return ^(CGFloat a){
        self.alpha = a;
        return self;
    };
}

- (UIView *(^)(BOOL))setHidden{
    return ^(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

- (UIView *(^)(BOOL))setClipsToBounds{
    return ^(BOOL clips){
        self.clipsToBounds = clips;
        return self;
    };
}

- (UIView *(^)(NSInteger))setTag{
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}

- (UIView *(^)(UIColor *))setBorderColor{
    return ^(UIColor *c){
        self.layer.borderColor = c.CGColor;
        return self;
    };
}

- (UIView *(^)(CGFloat))setBorderWidth{
    return ^(CGFloat w){
        self.layer.borderWidth = w;
        self.clipsToBounds = w > 0;
        return self;
    };
}


- (UIView *(^)(UIColor *))setShadowColor{
    return ^(UIColor *c){
        self.layer.shadowColor = c.CGColor;
        return self;
    };
}

- (UIView *(^)(CGSize))setShadowOffset{
    return ^(CGSize offset){
        self.layer.shadowOffset = offset;
        return self;
    };
}

- (UIView *(^)(CGPathRef))setShadowPath{
    return ^(CGPathRef path){
        self.layer.shadowPath = path;
        return self;
    };
}

- (UIView *(^)(CGFloat))setShadowRadius{
    return ^(CGFloat radius){
        self.layer.shadowRadius = radius;
        return self;
    };
}

- (UIView *(^)(CGFloat))setShadowOpacity{
    return ^(CGFloat opacity){
        self.layer.shadowOpacity = opacity;
        return self;
    };
}

- (UIView *(^)(CGFloat))setCornerRadius{
    return ^(CGFloat radius){
        self.layer.cornerRadius = radius;
        return self;
    };
}

- (UIView *(^)(id, SEL))addTapGestureRecognizer{
    return ^(id target,SEL action){
        UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:target action:action];
        [self addGestureRecognizer:tap];
        return self;
    };
}

- (UIView *(^)(id, SEL))addLongPressGestureRecognizer{
    return ^(id target,SEL action){
        UILongPressGestureRecognizer * tap = [[UILongPressGestureRecognizer alloc]initWithTarget:target action:action];
        [self addGestureRecognizer:tap];
        return self;
    };
}

- (UIView *(^)(id, SEL,UISwipeGestureRecognizerDirection))addSwipeGestureRecognizer{
    return ^(id target,SEL action,UISwipeGestureRecognizerDirection direction){
        UISwipeGestureRecognizer * tap = [[UISwipeGestureRecognizer alloc]initWithTarget:target action:action];
        tap.direction = direction;
        [self addGestureRecognizer:tap];
        return self;
    };
}


- (UIView *(^)(void))removeGestureRecognizers{
    return ^(){
        while (self.gestureRecognizers.count != 0) {
            UITapGestureRecognizer * tap = [self.gestureRecognizers objectAtIndex:0];
            [self removeGestureRecognizer:tap];
        }
        return self;
    };
}

- (UIView *(^)(void (^)(MASConstraintMaker *)))makeConstraint{
    return ^(void (^block)(MASConstraintMaker *)){
        NSAssert(self.superview != nil, @"无法添加约束，请先add到父视图上");
        [self mas_makeConstraints:block];
        return self;
    };
}

- (UIView *(^)(void (^)(MASConstraintMaker *)))remakeConstraint{
    return  ^(void (^block)(MASConstraintMaker *)){
        NSAssert(self.superview != nil, @"无法重置约束，请先add到父视图上");
        [self mas_remakeConstraints:block];
        return self;
    };
}

- (UIView *(^)(void (^)(MASConstraintMaker *)))updateConstraint{
    return ^(void (^block)(MASConstraintMaker *)){
        NSAssert(self.superview != nil, @"无法修改约束，请先add到父视图上");
        [self mas_updateConstraints:block];
        return self;
    };
}

@end

#import <Masonry/MASConstraint+Private.h>

@implementation MASConstraint (SuperView)

///相对于父视图的约束
- (MASConstraint * (^)(id))mas_equalTo{
    return ^(id value) {
        return self.equalTo(MASBoxValue(value));
    };
}

///相对于父视图的约束
- (MASConstraint * (^)(void))equalToSuperview{
    return self.mas_equalToSuperview;
}

- (MASConstraint * (^)(void))mas_equalToSuperview{
    return ^(void) {
        UIView *sv = self.superView;
        NSAssert(sv != nil, @"获取superview失败");
        return self.equalToWithRelation(sv, NSLayoutRelationEqual);
    };
}

- (UIView *)superView{
    ///MASViewConstraint
    if ([self isKindOfClass:MASViewConstraint.class]) {
        MASViewConstraint *viewConstraint = (MASViewConstraint *)self;
        UIView *superView = viewConstraint.firstViewAttribute.view.superview;
        if (superView) {
            return superView;
        }
    }
    ///代理途径获取superview
    if ([self respondsToSelector:@selector(delegate)]) {
        id delegate = [self performSelector:@selector(delegate)];
        if (delegate && [delegate performSelector:@selector(view)]) {
            UIView *selfView = [delegate performSelector:@selector(view)];
            if (selfView.superview) {
                return selfView.superview;
            }
        }
    }
    return nil;
}

@end
