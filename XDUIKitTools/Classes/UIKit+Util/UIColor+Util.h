//
//  UIColor+Util.h
//  SCTests
//
//  Created by CYQF on 2023/1/12.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger, GradientColorDirection) {
    GradientColorDirectionLevel,//水平渐变
    GradientColorDirectionVertical,//竖直渐变
    GradientColorDirectionDownDiagonalLine,//向上对角线渐变
    GradientColorDirectionUpwardDiagonalLine,//向下对角线渐变
};


@interface UIColor (Util)

/// 透明度
@property (nonatomic,readonly) UIColor *(^alpha)(CGFloat alpha);

/// 十六进制数值创建颜色
@property (nonatomic,readonly,class) UIColor *(^colorWithHexRGB)(NSInteger);
/// 十六进制数值创建颜色
/// - Parameter RGB: 十六进制数值
/// - Parameter A: 透明度
@property (nonatomic,readonly,class) UIColor *(^colorWithHexRGBA)(NSInteger,CGFloat);

@property (nonatomic,readonly,class) UIColor *randomColor;

/// 设置渐变色
/// - Parameter size: 需要渐变的大小
/// - Parameter direction: 渐变的方向
/// - Parameter startcolor: 渐变的开始颜色
/// - Parameter endColor: 渐变的结束颜色
@property (nonatomic,readonly,class) UIColor *(^gradientColorWithSizeDirectionStartColorAndEndColor)(CGSize,GradientColorDirection,UIColor*,UIColor*);


/// 根据颜色创建图片  默认1*1大小
@property (nonatomic,readonly) UIImage *toImage;
/// 按照给定大小创建图片
/// - Parameter size: 图片大小
@property (nonatomic,readonly) UIImage *(^toImageWithSize)(CGSize);

@end

