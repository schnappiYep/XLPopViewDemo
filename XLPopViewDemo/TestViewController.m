//
//  TestViewController.m
//  XLPopViewDemo
//
//  Created by Jellyfish on 16/9/9.
//  Copyright © 2016年 Jellyfish. All rights reserved.
//

#import "TestViewController.h"

@implementation TestViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setBarTintColor:[UIColor orangeColor]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationItem.title = @"XLPopView";
    self.view.backgroundColor = [UIColor whiteColor];
     
    UILabel *lab = [UILabel new];
    lab.frame = CGRectMake((self.view.frame.size.width-230)/2, (self.view.frame.size.height-60)/2, 230, 50);
    lab.text = @"我是通过XLPopViewDelegate方法push过来的。";
    lab.numberOfLines = 0;
    lab.textColor = [UIColor redColor];
    lab.font = [UIFont systemFontOfSize:16.0];
    lab.textAlignment = NSTextAlignmentLeft;
    lab.backgroundColor = [UIColor greenColor];
    [self.view addSubview:lab];
}

@end
