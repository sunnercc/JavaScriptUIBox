//
//  TypeConvert.m
//  JavaScriptUIBox
//
//  Created by sunner on 2021/2/28.
//  Copyright © 2021 sunner. All rights reserved.
//

#import "TypeConvert.h"

@implementation TypeConvert

+ (NSValue *)convertWithArgs:(JSValue *)args type:(JSValue *)type; {
    if ([[type toString] isEqualToString:@"rect"]) {
        NSArray *_args = [args toArray];
        return @(CGRectMake([_args[0] floatValue], [_args[1] floatValue], [_args[2] floatValue], [_args[3] floatValue]));
    }
    return @(10);
}

@end
