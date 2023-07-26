//
//  UITableView+Util.m
//  XDTest_oc
//
//  Created by CYQF on 2023/7/20.
//

#import "UITableView+Util.h"

@implementation UITableView (Util)

- (UITableView *(^)(id<UITableViewDelegate,UITableViewDataSource>))setDelegate{
    return ^(id <UITableViewDelegate,UITableViewDataSource> delegate){
        self.delegate = delegate;
        self.dataSource = delegate;
        return self;
    };
}

- (UITableView *(^)(void))setDefault{
    return ^(void){
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.estimatedRowHeight = 150;
        self.rowHeight = UITableViewAutomaticDimension;
        self.showsVerticalScrollIndicator = NO;
        if (@available(iOS 15.0, *)) self.sectionHeaderTopPadding = 0;
        return self;
    };
}

@end
