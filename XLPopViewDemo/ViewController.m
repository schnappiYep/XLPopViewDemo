//
//  ViewController.m
//  XLPopViewDemo
//
//  Created by Jellyfish on 16/9/9.
//  Copyright © 2016年 Jellyfish. All rights reserved.
//

#import "ViewController.h"
#import "XLPopView.h"
#import "TestViewController.h"

@interface ViewController () <XLPopViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor orangeColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)styleOne:(UIButton *)sender {
    NSLog(@"第一种弹出框:固定提示title、右上角关闭按钮、下面确定按钮；中间提示文字可自定义。");
    XLPopView *popView = [XLPopView popViewWithTipStr:@"这里可以自定义提示文字。"];
    [popView showInView:[UIApplication sharedApplication].keyWindow];
}


- (IBAction)styleTwo:(UIButton *)sender {
    NSLog(@"第二种弹出框:固定左边gif、右上角关闭按钮；中间提示文字可自定义。");
    XLPopView *popView = [XLPopView popViewWithMiddleTipStr:@"这里可以自定义提示文字。"];
    [popView showInView:[UIApplication sharedApplication].keyWindow];
}


- (IBAction)styleThree:(UIButton *)sender {
    NSLog(@"第三种弹出框:固定右上角关闭按钮；上面title、中间提示文字可自定义。");
    XLPopView *popView = [XLPopView popViewWithTopTitle:@"自定义title" middleTipStr:@"这里可以自定义提示文字，当然我也可以换行。"];
    [popView showInView:self.view];
}


- (IBAction)styleFour:(UIButton *)sender {
    NSLog(@"第四种弹出框:上面title、中间提示文字、下面左右按钮可自定义。");
    XLPopView *popView = [XLPopView popViewWithTopTitle:@"自定义title" middleTipStr:@"这里可以自定义提示文字。" confirmBtnTitle:@"确定" cancleBtnTitle:@"取消"];
    popView.delegate = self;
    [popView showInView:self.view];
}

#pragma mark -- XLPopViewDelegate

- (void)popViewClickConfirmBtn {
    TestViewController *tvc = [[TestViewController alloc] init];
    [self.navigationController pushViewController:tvc animated:YES];
}

@end
