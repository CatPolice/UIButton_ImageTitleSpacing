//
//  UIButton+ImageTitleSpacing.m
//  UIButton_ImageTitleSpacing
//
//  Created by runlin on 17/4/10.
//  Copyright © 2017年 gavin. All rights reserved.
//

#import "UIButton+ImageTitleSpacing.h"

@implementation UIButton (ImageTitleSpacing)




- (void)setButtonEdgeInsetsStyle:(ButtonEdgeInsetStyle)style withImageTitleSpace:(CGFloat)space{
    
    self.titleEdgeInsets = UIEdgeInsetsZero;
    self.imageEdgeInsets = UIEdgeInsetsZero;
    
    switch (style) {
        case ButtonEdgeInsetsStyleTop:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.frame.size.width, -self.imageView.frame.size.height-space/2, 0);
            //     self.imageEdgeInsets = UIEdgeInsetsMake(-self.titleLabel.frame.size.height-space/2, 0, 0, -self.titleLabel.frame.size.width);
            // 由于iOS8中titleLabel的size为0，用上面这样设置有问题，修改一下即可
            self.imageEdgeInsets = UIEdgeInsetsMake(-self.titleLabel.intrinsicContentSize.height-space/2, 0, 0, -self.titleLabel.intrinsicContentSize.width);
        }
            break;
            
        case ButtonEdgeInsetsStyleLeft:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, space / 2.0, 0, -space / 2.0);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -space / 2.0, 0, space / 2.0);
        }
            break;
        case ButtonEdgeInsetsStyleRight:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.frame.size.width - space / 2.0, 0, self.imageView.frame.size.width+space / 2.0);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.intrinsicContentSize.width + space / 2.0, 0, -self.titleLabel.intrinsicContentSize.width - space / 2.0);
        }
            break;
        case ButtonEdgeInsetsStyleBottom:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(-self.imageView.frame.size.height - space / 2.0, -self.imageView.frame.size.width, 0, 0);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, -self.titleLabel.intrinsicContentSize.height - space / 2.0, -self.titleLabel.intrinsicContentSize.width);
        }
            break;
        default:
            break;
    }
    
}


@end
