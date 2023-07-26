//
//  UIButton+EdgeInsets.h
//  VoluntaryReporting
//
//  Created by apple on 2020/3/24.
//  Copyright © 2020 CYQF. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, UIButtonImagePositionType) {
    UIButtonImagePositionTypeLeft,   //图片在左，标题在右，默认风格
    UIButtonImagePositionTypeRight,  //图片在右，标题在左
    UIButtonImagePositionTypeTop,    //图片在上，标题在下
    UIButtonImagePositionTypeBottom  //图片在下，标题在上
};

@interface UIButton (Util)


/// 设置图片和标题布局方式
/// - Parameter type: 布局方向
/// - Parameter spacing: 间距
@property (nonatomic,readonly) UIButton *(^setButtonLayoutWithImagePositionAndSpacing)(UIButtonImagePositionType,CGFloat);

/// 设置按钮富文本
/// - Parameter text: 改变的文字
/// - Parameter color: 改变的颜色
@property (nonatomic,readonly) UIButton *(^setAttributeStringWithTextAndColor)(NSString *,UIColor *);

/// 设置按钮富文本
/// - Parameter text: 改变的文字
/// - Parameter color: 改变的颜色
/// - Parameter font: 改变的字体
@property (nonatomic,readonly) UIButton *(^setAttributeStringWithTextColorAndFont)(NSString *,UIColor *,UIFont *);

/// 设置按钮富文本
/// - Parameter text: 改变的文字
/// - Parameter color: 改变的颜色
/// - Parameter font: 改变的字体
/// - Parameter state: 改变的标题状态
@property (nonatomic,readonly) UIButton *(^setAttributeStringWithTextColorAndFontForState)(NSString *,UIColor *,UIFont *,UIControlState);




@end
