//
//  UIImage+DSL.h
//  SCTests
//
//  Created by CYQF on 2022/11/23.
//

#import <UIKit/UIKit.h>

@interface UIImage (Util)

@property (nonatomic,readonly,class) UIImage *(^imageNamed)(NSString *);

@property (nonatomic,readonly,class) UIImage *(^imageWithData)(NSData *);

@property (nonatomic,readonly,class) UIImage *(^imageWithContentsOfFile)(NSString *);

@property (nonatomic,readonly,class) UIImage *(^imageWithNameInMainBundle)(NSString *);

@property (nonatomic,readonly,class) UIImage *(^imageWithCGImage)(CGImageRef);

@property (nonatomic,readonly,class) UIImage *(^imageWithCIImage)(CIImage *);

@property (nonatomic,readonly,class) UIImage *(^imageWithColor)(UIColor *);

@property (nonatomic,readonly,class) UIImage *(^imageWithColorAndSize)(UIColor *,CGSize);

///指定范围缩放图片 UIImageResizingMode = Stretch，拉伸图片
@property (nonatomic,readonly) UIImage *(^resizableImageWithCapInset)(UIEdgeInsets);
///指定范围缩放图片
@property (nonatomic,readonly) UIImage *(^resizableImageWithCapInsetAndMode)(UIEdgeInsets,UIImageResizingMode);

///叠加颜色
@property (nonatomic,readonly) UIImage *(^setTintColor)(UIColor *);

///将图片调整到正方向
@property (nonatomic,readonly) UIImage *(^fixOrientation)(void);

///改变大小
@property (nonatomic,readonly) UIImage *(^setScale)(CGFloat);



@end

