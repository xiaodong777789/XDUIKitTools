//
//  UILabel+LineSpace.m
//  VoluntaryReporting
//
//  Created by apple on 2020/4/8.
//  Copyright © 2020 CYQF. All rights reserved.
//

#import "UILabel+Util.h"

#import <objc/runtime.h>

#import <CoreText/CoreText.h>

static char * kLabelInsetKey = "labelInsetKey";
static char * kLabelTruncationKey = "labelTruncationKey";
static char * kLabelAutoTruncationKey = "labelAutoTruncationKey";

@implementation UILabelTruncation

- (NSString *)open{
    if( [ @""  isEqualToString:_open] || _open == nil)_open = @"…展开";
    return _open;
}

-(UIColor *)openColor{
    if(_openColor == nil) _openColor = UIColor.blueColor;
    return _openColor;
}

- (NSString *)close{
    if( [ @""  isEqualToString:_close] || _close == nil)_close = @"收起";
    return _close;
}

- (UIColor *)closeColor{
    if(_closeColor == nil) _closeColor = UIColor.blueColor;
    return _closeColor;
}

- (UILabelTruncation *(^)(NSArray<NSString *> *))setValues{
    return ^(NSArray<NSString *> *values){
        if(values.count>=2){
            self.open = values[0];
            self.close = values[1];
        }
        return self;
    };
}

- (UILabelTruncation *(^)(NSArray<UIColor *> *))setColors{
    return ^(NSArray<UIColor *> *colors){
        if(colors.count>=2){
            self.openColor = colors[0];
            self.closeColor = colors[1];
        }
        return self;
    };
}

@end

@implementation UILabel (Util)

- (void)setTextInset:(UIEdgeInsets)textInset{
    @autoreleasepool {
        @synchronized (self) {
            objc_setAssociatedObject(self, &(kLabelInsetKey), [NSValue valueWithUIEdgeInsets:textInset], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        }
    }
}

- (UIEdgeInsets)textInset{
    id obj = objc_getAssociatedObject(self, &(kLabelInsetKey));
    return obj != nil ? [obj UIEdgeInsetsValue] : UIEdgeInsetsZero;
}

- (UILabel *(^)(UIEdgeInsets))setTextInset{
    return ^(UIEdgeInsets inset){
        self.textInset = inset;
        return self;
    };
}


- (void)setAutoTruncation:(BOOL)autoTruncation{
    @autoreleasepool {
        @synchronized (self) {
            objc_setAssociatedObject(self, &(kLabelAutoTruncationKey), [NSNumber numberWithBool:autoTruncation], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        }
    }
}

- (BOOL)autoTruncation{
    id obj = objc_getAssociatedObject(self, &(kLabelAutoTruncationKey));
    return obj != nil ? [obj boolValue] : NO;
}

- (UILabel *(^)(BOOL))setAutoTruncation{
    return ^(BOOL autotrun){
        self.autoTruncation = autotrun;
        return self;
    };
}


- (void)setTruncation:(UILabelTruncation *)truncation{
    @autoreleasepool {
        @synchronized (self) {
            objc_setAssociatedObject(self, &(kLabelTruncationKey), truncation, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        }
    }
}

- (UILabelTruncation *)truncation{
    id obj = objc_getAssociatedObject(self, &(kLabelTruncationKey));
    if(obj == nil){
        obj = UILabelTruncation.new;
        self.truncation = (UILabelTruncation *)obj;
    }
    return (UILabelTruncation *)obj;
}

- (UILabel *(^)(UILabelTruncation *))setTruncation{
    return ^(UILabelTruncation *trun){
        self.truncation = trun;
        return self;
    };
}

- (UILabel *(^)(CGFloat))setLineSpace{
    return ^(CGFloat space){
        [self setAttributeStringWithText:nil replaceColor:nil replaceFont:nil lineSpace:space headIndent:-1 wordSpace:-1 image:nil atIndex:-1];
        return self;
    };
}

- (UILabel *(^)(CGFloat))setHeadIndent{
    return ^(CGFloat headIndent){
        [self setAttributeStringWithText:nil replaceColor:nil replaceFont:nil lineSpace:-1 headIndent:headIndent wordSpace:-1 image:nil atIndex:-1];
        return self;
    };
}

- (UILabel *(^)(CGFloat))setWordSpace{
    return ^(CGFloat space){
        [self setAttributeStringWithText:nil replaceColor:nil replaceFont:nil lineSpace:-1 headIndent:-1 wordSpace:space image:nil atIndex:-1];
        return self;
    };
}

- (UILabel *(^)(UIImage *,NSInteger))addImageAtIndex{
    return ^(UIImage *img,NSInteger index){
        [self setAttributeStringWithText:nil replaceColor:nil replaceFont:nil lineSpace:-1 headIndent:-1 wordSpace:-1 image:img atIndex:index];
        return self;
    };
}

- (UILabel *(^)(NSString *,UIColor *))setAttributeStringWithTextColor{
    return ^(NSString *text,UIColor *color){
        [self setAttributeStringWithText:text replaceColor:color replaceFont:nil lineSpace:-1 headIndent:-1 wordSpace:-1 image:nil atIndex:-1];
        return self;
    };
}

- (UILabel *(^)(NSString *,UIColor *,UIFont *))setAttributeStringWithTextColorAndFont{
    return ^(NSString *text,UIColor *color,UIFont *font){
        [self setAttributeStringWithText:text replaceColor:color replaceFont:font lineSpace:-1 headIndent:-1 wordSpace:-1 image:nil atIndex:-1];
        return self;
    };
}


//添加图片并设置行间距替换文字颜色
- (void)setAttributeStringWithText:(NSString *)text replaceColor:(UIColor *)color replaceFont:(UIFont *)font lineSpace:(float)lineSpace headIndent:(float)headIndent wordSpace:(float)wordSpace image:(UIImage *)image atIndex:(NSInteger)index
{
    NSString *labelText = self.text;
        
    if(labelText.length == 0)return;
    
    //创建 NSMutableAttributedString 富文本对象
    NSMutableAttributedString * attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
        
    NSRange all = NSMakeRange(0, labelText.length);
    
    ///字间距
    if(wordSpace > 0){
        [attributedString addAttribute:NSKernAttributeName value:@(wordSpace) range:all];
    }
    
    ///行间距
    if(lineSpace > 0){
        NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc]init];
        NSParagraphStyle *defult =  [attributedString attribute:NSParagraphStyleAttributeName atIndex:0 effectiveRange:nil];
        if(defult){
            [paragraphStyle setParagraphStyle:defult];
        }
        if(!paragraphStyle)paragraphStyle = NSMutableParagraphStyle.new;
        [paragraphStyle setLineSpacing:lineSpace];
        [paragraphStyle setLineBreakMode:self.lineBreakMode];
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:all];
    }
    
    ///缩进
    if(headIndent > 0){
        NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc]init];
        NSParagraphStyle *defult =  [attributedString attribute:NSParagraphStyleAttributeName atIndex:0 effectiveRange:nil];
        if(defult){
            [paragraphStyle setParagraphStyle:defult];
        }
        paragraphStyle.firstLineHeadIndent = headIndent; // 首行缩进20点
        paragraphStyle.headIndent = 0; // 其他行的缩进
        paragraphStyle.lineBreakMode = self.lineBreakMode;
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:all];
    }
    ///修改部分文字颜色
    if(text.length > 0){
        
        NSInteger start = 0;
        while (true) {
            
            NSRange range = [labelText rangeOfString:text options:1 range:NSMakeRange(start, labelText.length-start)];
            if(range.location != NSNotFound){
                [attributedString addAttribute:NSFontAttributeName value: font==nil ? self.font : font range:range];
                [attributedString addAttribute:NSForegroundColorAttributeName value:color range:range];
                start = range.location+range.length;
                if(start<labelText.length)continue;
            }
            break;
        }
        
       
    }
    ///添加图片
    if (image){
        NSInteger atIndex = index;
        if(index < 0)atIndex = 0;
        if(index > labelText.length)atIndex = labelText.length;
        NSTextAttachment * attach = [[NSTextAttachment alloc] init];
        attach.bounds = CGRectMake(0, 0, image.size.width, image.size.height);
        attach.image = image;
        NSAttributedString * imageStr = [NSAttributedString attributedStringWithAttachment:attach];
        [attributedString insertAttributedString:imageStr atIndex:atIndex];//加入文字前面
    }
    
    self.attributedText = attributedString;
    
//    [self sizeToFit];
}

@end
@interface DBLabel()
@property(nonatomic,assign)CGFloat contentWidth;
@property(nonatomic,assign)BOOL didAddOpen;
@property(nonatomic,assign)BOOL didOpen;
@property(nonatomic,assign)BOOL didAddTruncation;
@property(nonatomic,assign)NSInteger tempNumberOfLines;

@property(nonatomic,assign)NSInteger openIndex;
@end
@implementation DBLabel

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines{

    UIEdgeInsets inset = self.textInset;
    
    CGRect rect = [super textRectForBounds:UIEdgeInsetsInsetRect(bounds,inset) limitedToNumberOfLines:numberOfLines];
    
    /*
    if(self.autoTruncation){
        
        self.contentWidth = rect.size.width;

        CGRect rectMax = [super textRectForBounds:UIEdgeInsetsInsetRect(bounds,inset) limitedToNumberOfLines:0];
        
        if(rect.size.height < rectMax.size.height && !self.didAddOpen){
//            NSLog(@"---------- 可以展开");
            self.didAddOpen = YES;
            self.tempNumberOfLines = numberOfLines;
            self.didOpen = NO;
            self.setUserInteractionEnabled(YES).setLineBreakMode(NSLineBreakByCharWrapping);
            
            ///结尾添加收起
            NSMutableAttributedString *str = [[NSMutableAttributedString alloc]initWithAttributedString:self.attributedText];
            CFAttributedStringRef attrRef = (__bridge CFAttributedStringRef)self.attributedText;
            CFDictionaryRef dicRef = CFAttributedStringGetAttributes(attrRef, 0, nil);
            NSDictionary *dic = (__bridge NSDictionary<NSAttributedStringKey,id> * _Nullable)(dicRef);
            NSMutableDictionary *mdic = [NSMutableDictionary dictionaryWithDictionary:dic];
            mdic[NSForegroundColorAttributeName] = self.truncation.closeColor;
            [str appendAttributedString:[[NSAttributedString alloc] initWithString:self.truncation.close attributes:mdic]];
            self.attributedText = str;
        }
        ///需要添加展开、收起
        
//        NSLog(@"--------self.didAddTruncation %@",self.didAddTruncation ? @"yes" : @"no");
//        if(self.didAddOpen && !self.didAddTruncation){
//            [self getOpenIndexWithAttributedString:self.attributedText];
//        }

    }
    */
    if(rect.size.width > 0){
        rect.size.width += (inset.left + inset.right);
    }
    if(rect.size.height > 0){
        rect.size.height += (inset.top + inset.bottom);
    }
//    NSLog(@"----------textRectForBounds 计算大小%@",NSStringFromCGRect(rect));

    return rect;
    
}

-(NSInteger)getOpenIndexWithAttributedString:(NSAttributedString *)attr{
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc]initWithAttributedString:attr];

    if(!self.didOpen){
        CFAttributedStringRef attrRef = (__bridge CFAttributedStringRef)attr;
        
        
        CFDictionaryRef dicRef = CFAttributedStringGetAttributes(attrRef, 0, nil);

        CFIndex startIndex = 0;

        CTTypesetterRef typesetter = CTTypesetterCreateWithAttributedStringAndOptions(attrRef,dicRef);
        
        for (int i = 0; i < self.tempNumberOfLines; i++) {
            CFIndex index = CTTypesetterSuggestClusterBreakWithOffset(typesetter, startIndex, self.contentWidth,i);
//            NSAttributedString *attt = [attr attributedSubstringFromRange:NSMakeRange(startIndex, index)];
//            NSLog(@"第%d行----%@,%ld,%ld",i,attt.string,startIndex,index);
            startIndex += index;
        }
        CFRelease(typesetter);
//        NSLog(@"-------------------------------");

        NSDictionary *dic = (__bridge NSDictionary<NSAttributedStringKey,id> * _Nullable)(dicRef);
        NSMutableDictionary *mdic = [NSMutableDictionary dictionaryWithDictionary:dic];
        mdic[NSForegroundColorAttributeName] = self.truncation.openColor;
        //    NSLog(@"%@",mdic);
        
        self.openIndex = startIndex -  self.truncation.open.length;

        [str insertAttributedString:[[NSAttributedString alloc] initWithString:[self.truncation.open stringByAppendingString:@"\n"] attributes:mdic] atIndex:self.openIndex];
    }else{
        [str deleteCharactersInRange:NSMakeRange(self.openIndex, self.truncation.open.length+1)];
    }
    
    self.didAddTruncation = YES;
    
    self.attributedText = str;
    
    return 0;
}

-(void)openLabel{
    self.didOpen = !self.didOpen;
    self.didAddTruncation = NO;
    self.numberOfLines = self.didOpen ? 0 : self.tempNumberOfLines;
}

- (void)drawTextInRect:(CGRect)rect{
    CGRect r = UIEdgeInsetsInsetRect(rect, self.textInset);
//    NSLog(@"----------drawTextInRect %@,%@",NSStringFromCGRect(rect),NSStringFromCGRect(r));
    [super drawTextInRect:r];
    
    /*
    NSLog(@"----------drawTextInRect %@,%@",NSStringFromCGRect(rect),NSStringFromCGRect(r));
    if(!self.autoTruncation){
        [super drawTextInRect:r];
        return;
    }
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, r.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc]initWithAttributedString:self.attributedText];
    NSLog(@"-------str %@",str.string);
    
    CFAttributedStringRef attrRef = (__bridge CFAttributedStringRef)str;
        
    CTTypesetterRef typesetter = CTTypesetterCreateWithAttributedString(attrRef);
        
    CTFramesetterRef frameTeyp = CTFramesetterCreateWithTypesetter(typesetter);
    
    CFRelease(typesetter);
    
    CGPathRef path = CGPathCreateWithRect(r, NULL);

    CFDictionaryRef dicRef = CFAttributedStringGetAttributes(attrRef, 0, NULL);

    CTFrameRef frame = CTFramesetterCreateFrame(frameTeyp, CFRangeMake(0, 0), path, NULL);
    
    CFRelease(path);
    CFRelease(frameTeyp);

    CFArrayRef linesRef = CTFrameGetLines(frame);

    NSArray *lines = (__bridge NSArray *)linesRef;
    
    if(lines.count == 0){
        [super drawTextInRect:r];
        return;
    }
   
//    NSLog(@"-------%@",lines);
    
    for (int i = 0; i < lines.count; i++) {
        CTLineRef line = (__bridge CTLineRef)lines[i];
        
        CFArrayRef runsRef = CTLineGetGlyphRuns(line);
        
        for (int j = 0; j < CFArrayGetCount(runsRef); j++) {
            
            CTRunRef run = CFArrayGetValueAtIndex(runsRef, j);
            
            CFRange range = CTRunGetStringRange(run);
            
           CGRect frame = CTRunGetImageBounds(run, context, CFRangeMake(0, 0));
            
            NSAttributedString *runString = [str attributedSubstringFromRange:NSMakeRange(range.location, range.length)];
            NSLog(@"-----------%@,%@",runString.string,NSStringFromCGRect(frame));
        }
        
//        CTLineDraw(line, context);
        
    }
    
    
    CTFrameDraw(frame, context);
    */
}

@end
