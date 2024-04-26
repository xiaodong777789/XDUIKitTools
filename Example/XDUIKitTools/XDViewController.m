//
//  XDViewController.m
//  XDUIKitTools
//
//  Created by xiaodong on 07/26/2023.
//  Copyright (c) 2023 xiaodong. All rights reserved.
//

#import "XDViewController.h"
#import <XDUIKitTools/XDUIKitTools.h>

@interface XDViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation XDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    let temp = self.view.addSubView(UIView.class);
    
    temp.setFrame(CGRectMake(0, 0, 100, 100)).setBackgroundColor(UIColor.randomColor);
    
    temp.setOrigin(CGPointMake(100, 100)).setCornerRadius(10).setClipsToBounds(YES).makeConstraint(^(MASConstraintMaker *make) {
        make.center.equalToSuperview();
        make.size.mas_equalTo(CGSizeMake(200, 200));
    });
    
    UITableView *table = self.view.addSubView(UITableView.class);
    table.setDelegate(self).setDefault().makeConstraint(^(MASConstraintMaker * _Nonnull make) {
        make.edges.equalToSuperview();
    });
    
}

#pragma mark UITableViewDelegate,UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    if(!cell){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    }
    cell.contentView.setBackgroundColor(UIColor.randomColor);
    cell.textLabel.text = [NSString stringWithFormat:@"section：%ld，row：%ld",indexPath.section,indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
