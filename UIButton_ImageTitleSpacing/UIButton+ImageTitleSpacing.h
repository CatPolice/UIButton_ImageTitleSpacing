//
//  UIButton+ImageTitleSpacing.h
//  UIButton_ImageTitleSpacing
//
//  Created by runlin on 17/4/10.
//  Copyright © 2017年 gavin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ButtonEdgeInsetStyle) {
    ButtonEdgeInsetsStyleTop,       // img在上，label在下
    ButtonEdgeInsetsStyleLeft,      // img在左，label在右
    ButtonEdgeInsetsStyleBottom,    // img在下，label在上
    ButtonEdgeInsetsStyleRight      // img在右，label在左
};

@interface UIButton (ImageTitleSpacing)

- (void)setButtonEdgeInsetsStyle:(ButtonEdgeInsetStyle)style withImageTitleSpace:(CGFloat)space;

@end
