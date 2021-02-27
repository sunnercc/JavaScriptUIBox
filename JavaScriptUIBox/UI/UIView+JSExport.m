//
//  UIView+JSExport.m
//  JavaScriptUIBox
//
//  Created by sunner on 2021/2/28.
//  Copyright © 2021 sunner. All rights reserved.
//

#import "UIView+JSExport.h"

@implementation UIView (JSExport)

- (void)setBgColor:(UIColor *)bgColor {
    self.backgroundColor = bgColor;
}

- (UIColor *)bgColor {
    return self.backgroundColor;
}

@end
