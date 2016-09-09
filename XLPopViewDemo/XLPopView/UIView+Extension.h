//
//  UIView+Extension.h
//  Category
//
//  Created by Jellyfish on 16/4/13.
//  Copyright © 2016年 ios-21. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

@property (nonatomic, assign)CGFloat x;
@property (nonatomic, assign)CGFloat y;
@property (nonatomic, assign)CGFloat width;
@property (nonatomic, assign)CGFloat height;
@property (nonatomic, assign)CGSize size;
@property (nonatomic, assign)CGPoint origin;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

/** 判断self和anotherView是否重叠 */
- (BOOL)intersectsWithAnotherView:(UIView *)anotherView;

@end
