//
//  UIView+JSExport.m
//  JavaScriptUIBox
//
//  Created by sunner on 2021/2/28.
//  Copyright © 2021 sunner. All rights reserved.
//

#import "UIView+UI.h"

@implementation UIView (UI)

- (void)setBgColor:(UIColor *)bgColor {
    self.backgroundColor = bgColor;
}

- (UIColor *)bgColor {
    return self.backgroundColor;
}

- (NSObject *)super {
    return [self superview];
}



- (CGFloat)left {
    return self.superview.frame.origin.x;
}

- (CGFloat)top {
    return self.superview.frame.origin.y;
}

- (CGFloat)width {
    return self.superview.bounds.size.width;
}

- (CGFloat)height {
    return self.superview.bounds.size.height;
}

@end
