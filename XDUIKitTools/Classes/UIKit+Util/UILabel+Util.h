//
//  UILabel+LineSpace.h
//  VoluntaryReporting
//
//  Created by apple on 2020/4/8.
//  Copyright © 2020 CYQF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabelTruncation : NSObject

///展开字符串
@property(nonatomic,copy)NSString *open;
///展开字符串颜色
@property(nonatomic,strong)UIColor *openColor;
///收起字符串
@property(nonatomic,copy)NSString *close;
///收起字符串
@property(nonatomic,strong)UIColor *closeColor;

/// 设置截断字符串
/// - ps：数组大于等于2时设置有效
///              open = index0
///              close = index1
@property(nonatomic,readonly)UILabelTruncation *(^setValues)(NSArray<NSString *> *);

/// 设置截断字符串颜色
/// - ps：数组大于等于2时设置有效
///              openColor = index0
///              closeColor = index1
@property(nonatomic,readonly)UILabelTruncation *(^setColors)(NSArray<UIColor *> *);

@end

@interface UILabel (Util)

///文字内边距
/// - ps：Only the DBLabel works
@property (nonatomic,assign) UIEdgeInsets textInset;

///设置文字内边距
/// - Parameter inset：文字内间距
/// - ps：Only the DBLabel works
@property (nonatomic,readonly) UILabel *(^setTextInset)(UIEdgeInsets);

/// 自动展开收起 default is no
/// - ps：Only the DBLabel works
@property(nonatomic,assign)BOOL autoTruncation;

/// 自动展开收起 default is no
@property (nonatomic,readonly) UILabel *(^setAutoTruncation)(BOOL);


///截断字符串
/// - ps：default is open = ...展开 close = 收起
///     Only the DBLabel works
@property (nonatomic,strong)UILabelTruncation *truncation;

///设置截断字符串mode
/// - Parameter inset：截断mode
/// - ps：default is open = ...展开 close = 收起
///     Only the DBLabel works
@property (nonatomic,readonly) UILabel *(^setTruncation)(UILabelTruncation *);
/// 首行缩进
/// - Parameter HeadIndent: 行间距
@property (nonatomic,readonly) UILabel *(^setHeadIndent)(CGFloat);
/// 设置行间距
/// - Parameter Space: 行间距
@property (nonatomic,readonly) UILabel *(^setLineSpace)(CGFloat);
/// 设置字间距
/// - Parameter Space: 字间距
@property (nonatomic,readonly) UILabel *(^setWordSpace)(CGFloat);
/// 添加图片到文本
/// - Parameter Image: 图片
/// - Parameter Index: 位置
@property (nonatomic,readonly) UILabel *(^addImageAtIndex)(UIImage *,NSInteger);
/// 设置富文本
/// - Parameter text: 改变的文字
/// - Parameter color: 改变的颜色
@property (nonatomic,readonly) UILabel *(^setAttributeStringWithTextColor)(NSString *,UIColor *);
/// 设置富文本
/// - Parameter text: 改变的文字
/// - Parameter color: 改变的颜色
/// - Parameter font: 改变的字体
@property (nonatomic,readonly) UILabel *(^setAttributeStringWithTextColorAndFont)(NSString *,UIColor *,UIFont *);

@end

@interface DBLabel : UILabel

@end
