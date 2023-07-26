//
//  XDViewController.m
//  XDUIKitTools
//
//  Created by xiaodong on 07/26/2023.
//  Copyright (c) 2023 xiaodong. All rights reserved.
//

#import "XDViewController.h"
#import <XDUIKitTools/XDUIKitTools.h>
@interface XDViewController ()

@end

@implementation XDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    let temp = self.view.addSubView(UIView.class);
    
    temp.setFrame(CGRectMake(0, 0, 100, 100)).setBackgroundColor(UIColor.randomColor);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
