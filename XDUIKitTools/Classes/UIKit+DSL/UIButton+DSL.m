//
//  UIButton+DSL.m
//  SCTests
//
//  Created by CYQF on 2022/11/21.
//

#import "UIButton+DSL.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UIButton (DSL)
#pragma clang diagnostic pop
- (UIButton *(^)(UIButtonConfiguration *))setConfiguration{
    return ^(UIButtonConfiguration *config){
        self.configuration = config;
        return self;
    };
}

- (void (^)(void))setNeedsUpdateConfiguration{
    return ^(){
        [self setNeedsUpdateConfiguration];
    };
}

- (void (^)(void))updateConfiguration{
    return ^(){
        [self updateConfiguration];
    };
}

- (UIButton *(^)(UIButtonConfigurationUpdateHandler))setConfigurationUpdateHandler{
    return ^(UIButtonConfigurationUpdateHandler hander){
        self.configurationUpdateHandler = hander;
        return self;
    };
}

- (UIButton *(^)(BOOL))setAutomaticallyUpdatesConfiguration{
    return ^(BOOL automatically){
        self.automaticallyUpdatesConfiguration = automatically;
        return self;
    };
}

- (UIButton *(^)(UIColor *))setTintColor{
    return ^(UIColor *color){
        self.tintColor = color;
        return self;
    };
}

- (UIButton *(^)(UIButtonRole))setRole{
    return ^(UIButtonRole role){
        self.role = role;
        return self;
    };
}

- (UIButton *(^)(BOOL))setPointerInteractionEnabled{
    return ^(BOOL enable){
        self.pointerInteractionEnabled = enable;
        return self;
    };
}

- (UIButton *(^)(UIButtonPointerStyleProvider))setPointerStyleProvider{
    return ^(UIButtonPointerStyleProvider provider){
        self.pointerStyleProvider = provider;
        return self;
    };
}

- (UIButton *(^)(UIMenu *))setMenu{
    return ^(UIMenu *menu){
        self.menu = menu;
        return self;
    };
}

- (UIButton *(^)(UIContextMenuConfigurationElementOrder))setPreferredMenuElementOrder{
    return ^(UIContextMenuConfigurationElementOrder order){
        self.preferredMenuElementOrder = order;
        return self;
    };
}

- (UIButton *(^)(BOOL))setChangesSelectionAsPrimaryAction{
    return ^(BOOL change){
        self.changesSelectionAsPrimaryAction = change;
        return self;
    };
}


- (UIButton *(^)(NSString *))setTitle{
    return ^(NSString *title){
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(NSString *, UIControlState))setTitleForState{
    return ^(NSString *title, UIControlState state){
        [self setTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(NSAttributedString *))setAttributedTitle{
    return ^(NSAttributedString *title){
        [self setAttributedTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(NSAttributedString *, UIControlState))setAttributedTitleForState{
    return ^(NSAttributedString *title, UIControlState state){
        [self setAttributedTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(UIFont *))setFont{
    return ^(UIFont *font){
        self.titleLabel.font = font;
        return self;
    };
}

- (UIButton *(^)(CGFloat))setSystemFontOfSize{
    return ^(CGFloat size){
        self.titleLabel.font = [UIFont systemFontOfSize:size];
        return self;
    };
}

- (UIButton *(^)(CGFloat))setBoldSystemFontOfSize{
    return ^(CGFloat size){
        self.titleLabel.font = [UIFont boldSystemFontOfSize:size];
        return self;
    };
}

- (UIButton *(^)(UIColor *))setTitleColor{
    return ^(UIColor *color){
        [self setTitleColor:color forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIColor *,UIControlState))setTitleColorForState{
    return ^(UIColor *color,UIControlState state){
        [self setTitleColor:color forState:state];
        return self;
    };
}

- (UIButton *(^)(UIColor *))setTitleShadowColor{
    return ^(UIColor *color){
        [self setTitleColor:color forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIColor *,UIControlState))setTitleShadowColorForState{
    return ^(UIColor *color,UIControlState state){
        [self setTitleColor:color forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *))setImage{
    return ^(UIImage *img){
        [self setImage:img forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIImage *,UIControlState))setImageForState{
    return ^(UIImage *img,UIControlState state){
        [self setImage:img forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImageSymbolConfiguration *))setPreferredSymbolConfiguration{
    return ^(UIImageSymbolConfiguration *config){
        [self setPreferredSymbolConfiguration:config forImageInState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIImageSymbolConfiguration *,UIControlState))setPreferredSymbolConfigurationForImageInState{
    return ^(UIImageSymbolConfiguration *config,UIControlState state){
        [self setPreferredSymbolConfiguration:config forImageInState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *))setBackgroundImage{
    return ^(UIImage *img){
        [self setBackgroundImage:img forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIImage *,UIControlState))setBackgroundImageForState{
    return ^(UIImage *img,UIControlState state){
        [self setBackgroundImage:img forState:state];
        return self;
    };
}

- (UIButton *(^)(id, SEL))addTargetWithActionForTouchUpInside{
    return ^(id target,SEL action){
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        return self;
    };
}

- (NSString *(^)(UIControlState))titleForState{
    return ^(UIControlState state){
        return [self titleForState:state];
    };
}

- (UIColor *(^)(UIControlState))titleColorForState{
    return ^(UIControlState state){
        return [self titleColorForState:state];
    };
}

- (UIColor *(^)(UIControlState))titleShadowColorForState{
    return ^(UIControlState state){
        return [self titleShadowColorForState:state];
    };
}

- (UIImage *(^)(UIControlState))imageForState{
    return ^(UIControlState state){
        return [self imageForState:state];
    };
}

- (UIImage *(^)(UIControlState))backgroundImageForState{
    return ^(UIControlState state){
        return [self backgroundImageForState:state];
    };
}

- (UIImageSymbolConfiguration *(^)(UIControlState))preferredSymbolConfigurationForImageInState{
    return ^(UIControlState state){
        return [self preferredSymbolConfigurationForImageInState:state];
    };
}

- (NSAttributedString *(^)(UIControlState))attributedTitleForState{
    return ^(UIControlState state){
        return [self attributedTitleForState:state];
    };
}


- (UIButton *(^)(UIEdgeInsets))setContentEdgeInsets{
    return ^(UIEdgeInsets edge){
        self.contentEdgeInsets = edge;
        return self;
    };
}


- (UIButton *(^)(UIEdgeInsets))setImageEdgeInsets{
    return ^(UIEdgeInsets edge){
        self.imageEdgeInsets = edge;
        return self;
    };
}

- (UIButton *(^)(UIEdgeInsets))setTitleEdgeInsets{
    return ^(UIEdgeInsets edge){
        self.titleEdgeInsets = edge;
        return self;
    };
}

@end
