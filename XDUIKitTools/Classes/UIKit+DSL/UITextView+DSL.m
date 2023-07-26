//
//  UITextView+DSL.m
//  SCTests
//
//  Created by CYQF on 2022/11/21.
//

#import "UITextView+DSL.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UITextView (DSL)
#pragma clang diagnostic pop

- (UITextView *(^)(id<UITextViewDelegate>))setDelegate{
    return ^(id<UITextViewDelegate> delegate){
        self.delegate = delegate;
        return self;
    };
}

- (UITextView *(^)(UIFont *))setFont{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}

- (UITextView *(^)(CGFloat))setSystemFontOfSize{
    return ^(CGFloat size){
        self.font = [UIFont systemFontOfSize:size];
        return self;
    };
}

- (UITextView *(^)(CGFloat))setBoldSystemFontOfSize{
    return ^(CGFloat size){
        self.font = [UIFont boldSystemFontOfSize:size];
        return self;
    };
}

- (UITextView *(^)(NSString *))setText{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UITextView *(^)(UIColor *))setTextColor{
    return ^(UIColor *color){
        self.textColor = color;
        return self;
    };
}

- (UITextView *(^)(NSTextAlignment))setTextAlignment{
    return ^(NSTextAlignment alig){
        self.textAlignment = alig;
        return self;
    };
}

- (UITextView *(^)(NSRange))setSelectedRange{
    return ^(NSRange range){
        self.selectedRange = range;
        return self;
    };
}

- (UITextView *(^)(BOOL))setEditable{
    return ^(BOOL edit){
        self.editable = edit;
        return self;
    };
}

- (UITextView *(^)(BOOL))setSelectable{
    return ^(BOOL selectable){
        self.selectable = selectable;
        return self;
    };
}

- (UITextView *(^)(BOOL))setAllowsEditingTextAttributes{
    return ^(BOOL edit){
        self.allowsEditingTextAttributes = edit;
        return self;
    };
}

- (UITextView *(^)(UIDataDetectorTypes))setDataDetectorTypes{
    return ^(UIDataDetectorTypes type){
        self.dataDetectorTypes = type;
        return self;
    };
}

- (UITextView *(^)(NSAttributedString *))setAttributedString{
    return ^(NSAttributedString *attr){
        self.attributedText = attr;
        return self;
    };
}

- (UITextView *(^)(NSDictionary<NSAttributedStringKey, id> *))setTypingAttributes{
    return ^(NSDictionary<NSAttributedStringKey, id>  *dic){
        self.typingAttributes = dic;
        return self;
    };
}

- (UITextView *(^)(BOOL))setClearsOnInsertion{
    return ^(BOOL clears){
        self.clearsOnInsertion = clears;
        return self;
    };
}

- (UITextView *(^)(UIEdgeInsets))setTextContainerInset{
    return ^(UIEdgeInsets edge){
        self.textContainerInset = edge;
        return self;
    };
}

- (UITextView *(^)(NSDictionary<NSAttributedStringKey,id> *))setLinkTextAttributes{
    return ^(NSDictionary<NSAttributedStringKey,id> *attr){
        self.linkTextAttributes = attr;
        return self;
    };
}

- (UITextView *(^)(BOOL))setUsesStandardTextScaling{
    return ^(BOOL scaling){
        self.usesStandardTextScaling = scaling;
        return self;
    };
}

- (UITextView *(^)(BOOL))setFindInteractionEnabled{
    return ^(BOOL enabled){
        self.findInteractionEnabled = enabled;
        return self;
    };
}

- (UITextView *(^)(id))setInteractionState{
    return ^(id state){
        self.interactionState = state;
        return self;
    };
}

@end
