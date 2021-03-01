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
#import <Masonry/Masonry.h>
#import "LayoutConstraintMaker.h"

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

        UIColor *bgColor = [props[@"bgColor"] toObject];
        curView.backgroundColor = bgColor;
        [superView addSubview:curView];

        // 解析 layout
        JSValue *layout = view[@"layout"];
        [curView mas_makeConstraints:^(MASConstraintMaker *make) {
            LayoutConstraintMaker *maker = [[LayoutConstraintMaker alloc] initWithMasConstraintMaker:make];
            [layout callWithArguments:@[maker, curView]];
        }];
    }
}

@end
