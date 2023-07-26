//
//  UIImageView+DSL.m
//  VoluntaryReportNew
//
//  Created by CYQF on 2023/3/23.
//

#import "UIImageView+DSL.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UIImageView (DSL)
#pragma clang diagnostic pop
- (UIImageView *(^)(UIImage *))setImage{
    return ^(UIImage *img){
        self.image = img;
        return self;
    };
}

- (UIImageView *(^)(UIImage *))setHighlightedImage{
    return ^(UIImage *img){
        self.highlightedImage = img;
        return self;
    };
}

- (UIImageView *(^)(UIImageSymbolConfiguration *))setPreferredSymbolConfiguration{
    return ^(UIImageSymbolConfiguration *config){
        self.preferredSymbolConfiguration = config;
        return self;
    };
}

- (UIImageView *(^)(BOOL))setHighlighted{
    return ^(BOOL highlighted){
        self.highlighted = highlighted;
        return self;
    };
}

- (UIImageView *(^)(NSArray<UIImage *> *))setAnimationImages{
    return ^(NSArray<UIImage *> * images){
        self.animationImages = images;
        return self;
    };
}

- (UIImageView *(^)(NSArray<UIImage *> *))setHighlightedAnimationImages{
    return ^(NSArray<UIImage *> * images){
        self.highlightedAnimationImages = images;
        return self;
    };
}

- (UIImageView *(^)(NSTimeInterval))setAnimationDuration{
    return ^(NSTimeInterval time){
        self.animationDuration = time;
        return self;
    };
}

- (UIImageView *(^)(NSInteger))setAnimationRepeatCount{
    return ^(NSInteger count){
        self.animationRepeatCount = count;
        return self;
    };
}

@end
