//
//  UIControl+DSL.h
//  SCTests
//
//  Created by CYQF on 2022/11/23.
//

#import <UIKit/UIKit.h>

@interface UIControl (DSL)

@property (nonatomic,readonly) UIControl *(^setEnabled)(BOOL);
@property (nonatomic,readonly) UIControl *(^setSelected)(BOOL);
@property (nonatomic,readonly) UIControl *(^setHighlighted)(BOOL);

@property (nonatomic,readonly) UIControl *(^setContentHorizontalAlignment)(UIControlContentHorizontalAlignment);
@property (nonatomic,readonly) UIControl *(^setContentVerticalAlignment)(UIControlContentVerticalAlignment);

@property (nonatomic,readonly) UIControl *(^setContextMenuInteractionEnabled)(BOOL) API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(watchos, tvos);
@property (nonatomic,readonly) UIControl *(^setShowsMenuAsPrimaryAction)(BOOL) API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(watchos, tvos);
@property (nonatomic,readonly) UIControl *(^setToolTip)(NSString *) API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(watchos, tvos);

@property (nonatomic,readonly) BOOL(^beginTrackingWithTouchAndEvent)(UITouch *,UIEvent *);
@property (nonatomic,readonly) BOOL(^continueTrackingWithTouchAndEvent)(UITouch *,UIEvent *);
@property (nonatomic,readonly) void(^endTrackingWithTouchAndEvent)(UITouch *,UIEvent *);
@property (nonatomic,readonly) void(^cancelTrackingWithEvent)(UIEvent *);


@property (nonatomic,readonly) UIControl *(^addTargetWithActionForControlEvents)(id,SEL,UIControlEvents);
@property (nonatomic,readonly) UIControl *(^removeTargetWithActionForControlEvents)(id,SEL,UIControlEvents);
@property (nonatomic,readonly) UIControl *(^addActionForControlEvents)(UIAction *,UIControlEvents) API_AVAILABLE(ios(14.0));
@property (nonatomic,readonly) UIControl *(^removeActionForControlEvents)(UIAction *,UIControlEvents) API_AVAILABLE(ios(14.0));
@property (nonatomic,readonly) UIControl *(^removeActionForIdentifierAndControlEvents)(UIActionIdentifier,UIControlEvents) API_AVAILABLE(ios(14.0));


@property (nonatomic,readonly) NSArray<NSString *> *(^actionsForTargetAndControlEvent)(id,UIControlEvents);
@property (nonatomic,readonly) void(^enumerateEventHandlers)(void (^)(UIAction *actionHandler, id target, SEL action, UIControlEvents controlEvents, BOOL *stop)) API_AVAILABLE(ios(14.0));
@property (nonatomic,readonly) void(^sendActionToTargetForEvent)(SEL,id,UIEvent *);
@property (nonatomic,readonly) void(^sendAction)(UIAction *) API_AVAILABLE(ios(14.0));
@property (nonatomic,readonly) void(^sendActionsForControlEvents)(UIControlEvents);


@property (nonatomic,readonly) CGPoint(^menuAttachmentPointForConfiguration)(UIContextMenuConfiguration *) API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(watchos, tvos);
@end

