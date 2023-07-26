//
//  UILabel+DSL.m
//  SCTests
//
//  Created by CYQF on 2022/11/21.
//

#import "UILabel+DSL.h"


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UILabel (DSL)
#pragma clang diagnostic pop

- (UILabel *(^)(UIFont *))setFont{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}

- (UILabel *(^)(CGFloat))setSystemFontOfSize{
    return ^(CGFloat size){
        self.font = [UIFont systemFontOfSize:size];
        return self;
    };
}

- (UILabel *(^)(CGFloat))setBoldSystemFontOfSize{
    return ^(CGFloat size){
        self.font = [UIFont boldSystemFontOfSize:size];
        return self;
    };
}

- (UILabel *(^)(CGFloat,UIFontWeight))setBoldSystemFontOfSizeAndWeight{
    return ^(CGFloat size,UIFontWeight weight){
        self.font = [UIFont systemFontOfSize:size weight:weight];
        return self;
    };
}

- (UILabel *(^)(NSString *))setText{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UILabel *(^)(UIColor *))setTextColor{
    return ^(UIColor *color){
        self.textColor = color;
        return self;
    };
}

- (UILabel *(^)(NSInteger))setNumberOfLines{
    return ^(NSInteger lines){
        self.numberOfLines = lines;
        return self;
    };
}

- (UILabel *(^)(NSTextAlignment))setTextAlignment{
    return ^(NSTextAlignment alig){
        self.textAlignment = alig;
        return self;
    };
}

- (UILabel *(^)(NSAttributedString *))setAttributedString{
    return ^(NSAttributedString *attr){
        self.attributedText = attr;
        return self;
    };
}

- (UILabel *(^)(NSLineBreakMode))setLineBreakMode{
    return ^(NSLineBreakMode mode){
        self.lineBreakMode = mode;
        return self;
    };
}

- (UILabel *(^)(UIColor *))setHighlightedTextColor{
    return ^(UIColor *color){
        self.highlightedTextColor = color;
        return self;
    };
}

- (UILabel *(^)(BOOL))setHighlighted{
    return ^(BOOL highighted){
        self.highlighted = highighted;
        return self;
    };
}

- (UILabel *(^)(BOOL))setEnabled{
    return ^(BOOL enabled){
        self.enabled = enabled;
        return self;
    };
}

- (UILabel *(^)(BOOL))setAdjustsFontSizeToFitWidth{
    return ^(BOOL fit){
        self.adjustsFontSizeToFitWidth = fit;
        return self;
    };
}

- (UILabel *(^)(UIBaselineAdjustment))setBaselineAdjustment{
    return ^(UIBaselineAdjustment adj){
        self.baselineAdjustment = adj;
        return self;
    };
}

- (UILabel *(^)(CGFloat))setMinimumScaleFactor{
    return ^(CGFloat scale){
        self.minimumScaleFactor = scale;
        return self;
    };
}

- (UILabel *(^)(BOOL))setAllowsDefaultTighteningForTruncation{
    return ^(BOOL truncation){
        self.allowsDefaultTighteningForTruncation = truncation;
        return self;
    };
}

- (UILabel *(^)(NSLineBreakStrategy))setLineBreakStrategy{
    return ^(NSLineBreakStrategy strategy){
        self.lineBreakStrategy = strategy;
        return self;
    };
}

- (UILabel *(^)(CGFloat))setPreferredMaxLayoutWidth{
    return ^(CGFloat width){
        self.preferredMaxLayoutWidth = width;
        return self;
    };
}

- (UILabel *(^)(BOOL))setEnablesMarqueeWhenAncestorFocused{
    return ^(BOOL af){
        self.enablesMarqueeWhenAncestorFocused = af;
        return self;
    };
}

- (UILabel *(^)(BOOL))setShowsExpansionTextWhenTruncated{
    return ^(BOOL show){
        self.showsExpansionTextWhenTruncated = show;
        return self;
    };
}


@end
