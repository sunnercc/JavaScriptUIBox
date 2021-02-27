//
//  JSRenderManager.m
//  JavaScriptUIBox
//
//  Created by sunner on 2021/2/28.
//  Copyright © 2021 sunner. All rights reserved.
//

#import "JSRenderManager.h"
#import "TypeConvert.h"
#import "ColorConvert.h"

@implementation JSRenderManager

+ (void)renderWithData:(JSValue *)data superView:(UIView *)superView {
    // 解析 views
    JSValue *views = data[@"views"];
    NSUInteger count = [views toArray].count;
    for (int i = 0; i < count; i++) {
        JSValue *view = views[i];
        // 解析 type
        JSValue *type = view[@"type"];
        // 解析 props
        JSValue *props = view[@"props"];
        CGRect rect = [[props[@"rect"] toObject] CGRectValue];
        UIView *curView = [[UIView alloc] initWithFrame:rect];
        
        UIColor *backgroundColor = [props[@"backgroundColor"] toObject];
        curView.backgroundColor = backgroundColor;
        [superView addSubview:curView];
        
        // 解析layout
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            JSValue *layout = view[@"layout"];
            [layout callWithArguments:@[@1, curView]];
        });
        
    }
}

@end
