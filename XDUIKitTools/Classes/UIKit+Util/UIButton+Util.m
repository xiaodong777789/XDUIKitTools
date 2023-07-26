//
//  UIButton+EdgeInsets.m
//  VoluntaryReporting
//
//  Created by apple on 2020/3/24.
//  Copyright © 2020 CYQF. All rights reserved.
//

#import "UIButton+Uitl.h"

#if __IPHONE_OS_VERSION_MIN_REQUIRED >= 70000
#define SS_SINGLELINE_TEXTSIZE(text, font) [text length] > 0 ? [text \
sizeWithAttributes:@{NSFontAttributeName:font}] : CGSizeZero;
#else
#define SS_SINGLELINE_TEXTSIZE(text, font) [text length] > 0 ? [text sizeWithFont:font] : CGSizeZero;
#endif

@implementation UIButton (Util)

-(UIButton *(^)(NSString *, UIColor *))setAttributeStringWithTextAndColor{
    return ^(NSString *text, UIColor *color){
        return self.setAttributeStringWithTextColorAndFontForState(text, color, self.titleLabel.font, UIControlStateNormal);
    };
}

-(UIButton *(^)(NSString *, UIColor *, UIFont *))setAttributeStringWithTextColorAndFont{
    return ^(NSString *text, UIColor *color, UIFont *font){
        return self.setAttributeStringWithTextColorAndFontForState(text, color, font, UIControlStateNormal);
    };
}
-(UIButton *(^)(NSString *, UIColor *, UIFont *,UIControlState))setAttributeStringWithTextColorAndFontForState{
    return ^(NSString *text, UIColor *color, UIFont *font,UIControlState state){
                
        NSString *title = [self titleForState:state];
        
        if(title.length == 0)title = text;
        
        NSMutableAttributedString * attributedStr = [[NSMutableAttributedString alloc] initWithString:title];
        NSRange range = [title rangeOfString:text];
        if(range.location != NSNotFound)
        {
            [attributedStr addAttribute:NSFontAttributeName value:font range:range];
            [attributedStr addAttribute:NSForegroundColorAttributeName value:color range:range];
        }
        [self setAttributedTitle:attributedStr forState:state];
        
        return self;
    };
}


- (UIButton * (^)(UIButtonImagePositionType, CGFloat))setButtonLayoutWithImagePositionAndSpacing{
    return ^(UIButtonImagePositionType type, CGFloat spacing){
        CGSize imageSize = [self imageForState:UIControlStateNormal].size;
        CGSize titleSize = SS_SINGLELINE_TEXTSIZE([self titleForState:UIControlStateNormal], self.titleLabel.font);
        switch (type) {
            case UIButtonImagePositionTypeLeft: {
                self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing, 0, 0);
                self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, spacing);
                break;
            }
            case UIButtonImagePositionTypeRight: {
                self.titleEdgeInsets = UIEdgeInsetsMake(0, - imageSize.width, 0, imageSize.width + spacing);
                self.imageEdgeInsets = UIEdgeInsetsMake(0, titleSize.width + spacing, 0, - titleSize.width);
                break;
            }
            case UIButtonImagePositionTypeTop: {
                self.titleEdgeInsets = UIEdgeInsetsMake(0, - imageSize.width, - (imageSize.height + spacing), 0);
                self.imageEdgeInsets = UIEdgeInsetsMake(- (titleSize.height + spacing), 0, 0, - titleSize.width);
                break;
            }
            case UIButtonImagePositionTypeBottom: {
                self.titleEdgeInsets = UIEdgeInsetsMake(- (imageSize.height + spacing), - imageSize.width, 0, 0);
                self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, - (titleSize.height + spacing), - titleSize.width);
                break;
            }
        }
        return self;
    };
}

@end
