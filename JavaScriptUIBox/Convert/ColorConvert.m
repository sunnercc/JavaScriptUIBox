//
//  ColorConvert.m
//  JavaScriptUIBox
//
//  Created by sunner on 2021/2/28.
//  Copyright © 2021 sunner. All rights reserved.
//

#import "ColorConvert.h"

@implementation ColorConvert

+ (UIColor *)colorWithArgs:(JSValue *)args {
    NSArray *_args = [args toArray];
    CGFloat r = [_args[0] floatValue] / 255.0;
    CGFloat g = [_args[1] floatValue] / 255.0;
    CGFloat b = [_args[2] floatValue] / 255.0;
    CGFloat a = [_args[3] floatValue];
    return [UIColor colorWithRed:r green:g blue:b alpha:a];
}


@end
