//
//  UIScrollView+DSL.m
//  SpeculateVolunteer
//
//  Created by CYQF on 2023/7/10.
//

#import "UIScrollView+DSL.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UIScrollView (DSL)
#pragma clang diagnostic pop
- (UIScrollView *(^)(CGPoint))setContentOffset{
    return ^(CGPoint p){
        self.contentOffset = p;
        return self;
    };
}

- (UIScrollView *(^)(CGSize))setContentSize{
    return ^(CGSize size){
        self.contentSize = size;
        return self;
    };
}

- (UIScrollView *(^)(UIEdgeInsets))setContentInset{
    return ^(UIEdgeInsets edge){
        self.contentInset = edge;
        return self;
    };
}

- (UIScrollView *(^)(id<UIScrollViewDelegate>))setDelegate{
    return ^(id<UIScrollViewDelegate> dele){
        self.delegate = dele;
        return self;
    };
}

- (UIScrollView *(^)(UIScrollViewContentInsetAdjustmentBehavior))setContentInsetAdjustmentBehavior{
    return ^(UIScrollViewContentInsetAdjustmentBehavior behavior){
        self.contentInsetAdjustmentBehavior = behavior;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))setDirectionalLockEnabled{
    return ^(BOOL enabled){
        self.directionalLockEnabled = enabled;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))setBounces{
    return ^(BOOL bounces){
        self.bounces = bounces;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))setAlwaysBounceVertical{
    return ^(BOOL vertical){
        self.alwaysBounceVertical = vertical;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))setAlwaysBounceHorizontal{
    return ^(BOOL horizontal){
        self.alwaysBounceHorizontal = horizontal;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))setPagingEnabled{
    return ^(BOOL enabled){
        self.pagingEnabled = enabled;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))setScrollEnabled{
    return ^(BOOL enabled){
        self.scrollEnabled = enabled;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))setShowsVerticalScrollIndicator{
    return ^(BOOL show){
        self.showsVerticalScrollIndicator = show;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))setShowsHorizontalScrollIndicator{
    return ^(BOOL show){
        self.showsHorizontalScrollIndicator = show;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))setShowsScrollIndicator{
    return ^(BOOL show){
        self.showsVerticalScrollIndicator = show;
        self.showsHorizontalScrollIndicator = show;
        return self;
    };
}

- (UIScrollView *(^)(UIScrollViewIndicatorStyle))setIndicatorStyle{
    return ^(UIScrollViewIndicatorStyle style){
        self.indicatorStyle = style;
        return self;
    };
}

- (UIScrollView *(^)(UIEdgeInsets))setVerticalScrollIndicatorInsets{
    return ^(UIEdgeInsets edge){
        self.verticalScrollIndicatorInsets = edge;
        return self;
    };
}

- (UIScrollView *(^)(UIEdgeInsets))setHorizontalScrollIndicatorInsets{
    return ^(UIEdgeInsets edge){
        self.horizontalScrollIndicatorInsets = edge;
        return self;
    };
}

- (UIScrollView *(^)(UIEdgeInsets))setScrollIndicatorInsets{
    return ^(UIEdgeInsets edge){
        self.scrollIndicatorInsets = edge;
        return self;
    };
}


- (UIScrollView *(^)(UIScrollViewDecelerationRate))setDecelerationRate{
    return ^(UIScrollViewDecelerationRate rate){
        self.decelerationRate = rate;
        return self;
    };
}


- (UIScrollView *(^)(UIScrollViewIndexDisplayMode))setIndexDisplayMode{
    return ^(UIScrollViewIndexDisplayMode mode){
        self.indexDisplayMode = mode;
        return self;
    };
}


- (UIScrollView *(^)(BOOL))setDelaysContentTouches{
    return ^(BOOL delays){
        self.delaysContentTouches = delays;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))setCanCancelContentTouches{
    return ^(BOOL cancel){
        self.canCancelContentTouches = cancel;
        return self;
    };
}

- (UIScrollView *(^)(CGFloat))setMinimumZoomScale{
    return ^(CGFloat scale){
        self.minimumZoomScale = scale;
        return self;
    };
}

- (UIScrollView *(^)(CGFloat))setMaximumZoomScale{
    return ^(CGFloat scale){
        self.maximumZoomScale = scale;
        return self;
    };
}

- (UIScrollView *(^)(CGFloat))setZoomScale{
    return ^(CGFloat scale){
        self.zoomScale = scale;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))setBouncesZoom{
    return ^(BOOL zoom){
        self.bouncesZoom = zoom;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))setScrollsToTop{
    return ^(BOOL top){
        self.scrollsToTop = top;
        return self;
    };
}

- (UIScrollView *(^)(UIScrollViewKeyboardDismissMode))setKeyboardDismissMode{
    return ^(UIScrollViewKeyboardDismissMode mode){
        self.keyboardDismissMode = mode;
        return self;
    };
}

- (UIScrollView *(^)(UIRefreshControl *))setRefreshControl{
    return ^(UIRefreshControl *control){
        self.refreshControl = control;
        return self;
    };
}

@end
