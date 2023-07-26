//
//  UITableView+Util.h
//  XDTest_oc
//
//  Created by CYQF on 2023/7/20.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (Util)

/// 设置代理
@property (nonatomic,readonly) UITableView *(^setDelegate)(_Nullable id<UITableViewDelegate,UITableViewDataSource> delegate);

/// 设置默认环境，根据自身需求设置
@property (nonatomic,readonly) UITableView *(^setDefault)(void);

@end

NS_ASSUME_NONNULL_END
