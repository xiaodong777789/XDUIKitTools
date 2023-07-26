//
//  UITextField+DSL.m
//  SCTests
//
//  Created by CYQF on 2022/11/21.
//

#import "UITextField+DSL.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UITextField (DSL)
#pragma clang diagnostic pop

- (UITextField *(^)(id<UITextFieldDelegate>))setDelegate{
    return ^(id<UITextFieldDelegate> delegate){
        self.delegate = delegate;
        return self;
    };
}

- (UITextField *(^)(UIFont *))setFont{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}

- (UITextField *(^)(CGFloat))setSystemFontOfSize{
    return ^(CGFloat size){
        self.font = [UIFont systemFontOfSize:size];
        return self;
    };
}

- (UITextField *(^)(CGFloat))setBoldSystemFontOfSize{
    return ^(CGFloat size){
        self.font = [UIFont boldSystemFontOfSize:size];
        return self;
    };
}

- (UITextField *(^)(NSString *))setText{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UITextField *(^)(UIColor *))setTextColor{
    return ^(UIColor *color){
        self.textColor = color;
        return self;
    };
}

- (UITextField *(^)(NSTextAlignment))setTextAlignment{
    return ^(NSTextAlignment alig){
        self.textAlignment = alig;
        return self;
    };
}

- (UITextField *(^)(NSAttributedString *))setAttributedString{
    return ^(NSAttributedString *attr){
        self.attributedText = attr;
        return self;
    };
}

- (UITextField *(^)(UITextBorderStyle))setBorderStyle{
    return ^(UITextBorderStyle style){
        self.borderStyle = style;
        return self;
    };
}

- (UITextField *(^)(UIReturnKeyType))setReturnKeyType{
    return ^(UIReturnKeyType type){
        self.returnKeyType = type;
        return self;
    };
}

- (UITextField *(^)(UIKeyboardType))setKeyboardType{
    return ^(UIKeyboardType type){
        self.keyboardType = type;
        return self;
    };
}




- (UITextField *(^)(NSDictionary<NSAttributedStringKey,id> *))setDefaultTextAttributes{
    return ^(NSDictionary<NSAttributedStringKey,id> * attr){
        self.defaultTextAttributes = attr;
        return self;
    };
}

-(UITextField *(^)(NSString *))setPlaceholder{
    return ^(NSString * holder){
        self.placeholder = holder;
        return self;
    };
}
- (UITextField *(^)(NSAttributedString *))setAttributedPlaceholder{
    return ^(NSAttributedString * holder){
        self.attributedPlaceholder = holder;
        return self;
    };
}

- (UITextField *(^)(BOOL))setClearsOnBeginEditing{
    return ^(BOOL editing){
        self.clearsOnBeginEditing = editing;
        return self;
    };
}

- (UITextField *(^)(CGFloat))setMinimumFontSize{
    return ^(CGFloat size){
        self.minimumFontSize = size;
        return self;
    };
}

- (UITextField *(^)(BOOL))setAdjustsFontSizeToFitWidth{
    return ^(BOOL fit){
        self.adjustsFontSizeToFitWidth = fit;
        return self;
    };
}

- (UITextField *(^)(UIImage *))setBackground{
    return ^(UIImage * img){
        self.background = img;
        return self;
    };
}

- (UITextField *(^)(UIImage *))setDisabledBackground{
    return ^(UIImage * img){
        self.disabledBackground = img;
        return self;
    };
}

- (UITextField *(^)(BOOL))setAllowsEditingTextAttributes{
    return ^(BOOL edit){
        self.allowsEditingTextAttributes = edit;
        return self;
    };
}

- (UITextField *(^)(NSDictionary<NSAttributedStringKey,id> *))setTypingAttributes{
    return ^(NSDictionary<NSAttributedStringKey,id> * attr){
        self.typingAttributes = attr;
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode))setClearButtonMode{
    return ^(UITextFieldViewMode mode){
        self.clearButtonMode = mode;
        return self;
    };
}

- (UITextField *(^)(UIView *))setLeftView{
    return ^(UIView * view){
        self.leftView = view;
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode))setLeftViewMode{
    return ^(UITextFieldViewMode mode){
        self.leftViewMode = mode;
        return self;
    };
}

- (UITextField *(^)(UIView *))setRightView{
    return ^(UIView * view){
        self.rightView = view;
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode))setRightViewMode{
    return ^(UITextFieldViewMode mode){
        self.rightViewMode = mode;
        return self;
    };
}

- (UITextField *(^)(BOOL))setClearsOnInsertion{
    return ^(BOOL clears){
        self.clearsOnInsertion = clears;
        return self;
    };
}

- (UITextField *(^)(id))setInteractionState{
    return ^(id state){
        self.interactionState = state;
        return self;
    };
}
@end
