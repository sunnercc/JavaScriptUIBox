//
//  UIParser.m
//  JavaScriptCoreDemo
//
//  Created by sunner on 2021/2/27.
//  Copyright © 2021 sunner. All rights reserved.
//

#import "UIParser.h"

@implementation UIParser

- (void)render:(NSDictionary *)object {
    NSLog(@"%@", object);
    [self parserViews:object[@"views"]];
}

- (void)parserViews:(NSArray *)views {
    for (int i = 0; i < views.count; i++) {
        NSDictionary *view = views[i];
        NSString *type = view[@"type"];
        if ([type isEqualToString:@"view"]) {
            [self parserPropsForView:view hostView:self.hostView];
        } else if ([type isEqualToString:@"button"]) {
            [self parserPropsForButton:view hostView:self.hostView];
        }
    }
}

- (void)parserPropsForView:(NSDictionary *)view hostView:(UIView *)hostView {
    NSDictionary *props = view[@"props"];
    CGFloat x = [props[@"x"] floatValue];
    CGFloat y = [props[@"y"] floatValue];
    CGFloat width = [props[@"width"] floatValue];
    CGFloat height = [props[@"height"] floatValue];
    NSString *color = props[@"color"];
    NSArray *views = view[@"views"];
    CGRect frame = CGRectMake(x, y, width, height);
    UIView *realView = [[UIView alloc] initWithFrame:frame];
    if ([color isEqualToString:@"red"]) {
        realView.backgroundColor = [UIColor redColor];
    } else {
        realView.backgroundColor = [UIColor yellowColor];
    }
    [hostView addSubview:realView];
    for (int i = 0; i < views.count; i++) {
        NSDictionary *view = views[i];
        [self parserPropsForView:view hostView:realView];
    }
}

- (void)parserPropsForButton:(NSDictionary *)view hostView:(UIView *)hostView {
    NSDictionary *props = view[@"props"];
    CGFloat x = [props[@"x"] floatValue];
    CGFloat y = [props[@"y"] floatValue];
    CGFloat width = [props[@"width"] floatValue];
    CGFloat height = [props[@"height"] floatValue];
    NSString *title = props[@"title"];
    CGRect frame = CGRectMake(x, y, width, height);
    UIButton *realView = [UIButton buttonWithType:UIButtonTypeSystem];
    realView.frame = frame;
    [realView setTitle:title forState:UIControlStateNormal];
    [self.hostView addSubview:realView];
}

@end
