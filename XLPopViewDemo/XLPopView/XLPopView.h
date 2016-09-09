//
//  XLPopView.h
//  TipRect
//
//  Created by Jellyfish on 16/8/8.
//  Copyright © 2016年 Jellyfish. All rights reserved.
//

#import <UIKit/UIKit.h>


@class  XLPopView;
@protocol XLPopViewDelegate <NSObject>
@optional
/** 点击确认按钮代理方法 */
- (void)popViewClickConfirmBtn;
@end

@interface XLPopView : UIView

/** XLPopView代理 */
@property (nonatomic, weak) id<XLPopViewDelegate> delegate;

/**
 *  第一种弹出框:固定提示title、右上角关闭按钮、下面确定按钮；中间提示文字可自定义
 *
 *  @param tipStr 中间提示文字
 *
 *  @return 弹出框
 */
+ (XLPopView *)popViewWithTipStr:(NSString *)tipStr;

/**
 *  第二种弹出框:固定左边gif、右上角关闭按钮；中间提示文字可自定义
 *
 *  @param middleTipStr 中间提示文字
 *
 *  @return 弹出框
 */
+ (XLPopView *)popViewWithMiddleTipStr:(NSString *)middleTipStr;

/**
 *  第三种弹出框:固定右上角关闭按钮；上面title、中间提示文字可自定义
 *
 *  @param topTitle     顶部title
 *  @param middleTipStr 中间提示文字
 *
 *  @return 弹出框
 */
+ (XLPopView *)popViewWithTopTitle:(NSString *)topTitle middleTipStr:(NSString *)middleTipStr;

/**
 *  第四种弹出框:上面title、中间提示文字、下面左右按钮可自定义
 *
 *  @param topTitle     顶部title
 *  @param middleTipStr 中间提示文字
 *  @param confirmTitle 左边确定按钮
 *  @param cancleTitle  右边取消按钮
 *
 *  @return 弹出框
 */
+ (XLPopView *)popViewWithTopTitle:(NSString *)topTitle middleTipStr:(NSString *)middleTipStr confirmBtnTitle:(NSString *)confirmTitle cancleBtnTitle:(NSString *)cancleTitle;

/**
 *  展示在哪个视图上
 */
- (void)showInView:(UIView *)view;

@end
