//
//  UIControl+DSL.m
//  SCTests
//
//  Created by CYQF on 2022/11/23.
//

#import "UIControl+DSL.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UIControl (DSL)
#pragma clang diagnostic pop

- (UIControl *(^)(BOOL))setEnabled{
    return ^(BOOL enabled){
        self.enabled = enabled;
        return self;
    };
}

- (UIControl *(^)(BOOL))setSelected{
    return ^(BOOL selected){
        self.selected = selected;
        return self;
    };
}

- (UIControl *(^)(BOOL))setHighlighted{
    return ^(BOOL highlighted){
        self.highlighted = highlighted;
        return self;
    };
}

- (UIControl *(^)(UIControlContentHorizontalAlignment))setContentHorizontalAlignment{
    return ^(UIControlContentHorizontalAlignment aligmnment){
        self.contentHorizontalAlignment = aligmnment;
        return self;
    };
}

- (UIControl *(^)(UIControlContentVerticalAlignment))setContentVerticalAlignment{
    return ^(UIControlContentVerticalAlignment aligmnment){
        self.contentVerticalAlignment = aligmnment;
        return self;
    };
}

- (UIControl *(^)(BOOL))setContextMenuInteractionEnabled{
    return ^(BOOL enabled){
        self.contextMenuInteractionEnabled = enabled;
        return self;
    };
}

- (UIControl *(^)(BOOL))setShowsMenuAsPrimaryAction{
    return ^(BOOL show){
        self.showsMenuAsPrimaryAction = show;
        return self;
    };
}

- (UIControl *(^)(NSString *))setToolTip{
    return ^(NSString *tip){
        self.toolTip = tip;
        return self;
    };
}

- (BOOL (^)(UITouch *, UIEvent *))beginTrackingWithTouchAndEvent{
    return ^(UITouch *touch, UIEvent *event){
        return [self beginTrackingWithTouch:touch withEvent:event];
    };
}

- (BOOL (^)(UITouch *, UIEvent *))continueTrackingWithTouchAndEvent{
    return ^(UITouch *touch, UIEvent *event){
        return [self continueTrackingWithTouch:touch withEvent:event];
    };
}

- (void (^)(UITouch *, UIEvent *))endTrackingWithTouchAndEvent{
    return ^(UITouch *touch, UIEvent *event){
        [self endTrackingWithTouch:touch withEvent:event];
    };
}

- (void (^)(UIEvent *))cancelTrackingWithEvent{
    return ^(UIEvent *event){
        [self cancelTrackingWithEvent:event];
    };
}

- (UIControl *(^)(id, SEL, UIControlEvents))addTargetWithActionForControlEvents{
    return ^(id target, SEL action, UIControlEvents event){
        [self addTarget:target action:action forControlEvents:event];
        return self;
    };
}

- (UIControl *(^)(id, SEL, UIControlEvents))removeTargetWithActionForControlEvents{
    return ^(id target, SEL action, UIControlEvents event){
        [self removeTarget:target action:action forControlEvents:event];
        return self;
    };
}

- (UIControl *(^)(UIAction *, UIControlEvents))addActionForControlEvents{
    return ^(UIAction *action, UIControlEvents event){
        [self addAction:action forControlEvents:event];
        return self;
    };
}

- (UIControl *(^)(UIAction *, UIControlEvents))removeActionForControlEvents{
    return ^(UIAction *action, UIControlEvents event){
        [self removeAction:action forControlEvents:event];
        return self;
    };
}

- (UIControl *(^)(UIActionIdentifier, UIControlEvents))removeActionForIdentifierAndControlEvents{
    return ^(UIActionIdentifier identifier, UIControlEvents event){
        [self removeActionForIdentifier:identifier forControlEvents:event];
        return self;
    };
}

- (NSArray<NSString *> *(^)(id, UIControlEvents))actionsForTargetAndControlEvent{
    return ^(id target, UIControlEvents event){
        return [self actionsForTarget:target forControlEvent:event];
    };
}

- (void (^)(void (^)(UIAction *, id, SEL, UIControlEvents, BOOL *)))enumerateEventHandlers{
    return ^(void (^block)(UIAction *, id, SEL, UIControlEvents, BOOL *)){
        [self enumerateEventHandlers:block];
    };
}

- (void (^)(SEL, id, UIEvent *))sendActionToTargetForEvent{
    return ^(SEL action, id to, UIEvent *event){
        [self sendAction:action to:to forEvent:event];
    };
}

- (void (^)(UIAction *))sendAction{
    return ^(UIAction *action){
        [self sendAction:action];
    };
}

- (void (^)(UIControlEvents))sendActionsForControlEvents{
    return ^(UIControlEvents event){
        [self sendActionsForControlEvents:event];
    };
}

- (CGPoint (^)(UIContextMenuConfiguration *))menuAttachmentPointForConfiguration{
    return ^(UIContextMenuConfiguration *config){
        return [self menuAttachmentPointForConfiguration:config];
    };
}

@end
