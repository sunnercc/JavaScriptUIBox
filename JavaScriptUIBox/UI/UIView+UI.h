//
//  UIView+JSExport.h
//  JavaScriptUIBox
//
//  Created by sunner on 2021/2/28.
//  Copyright © 2021 sunner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>

NS_ASSUME_NONNULL_BEGIN


@protocol UIViewUIJSExport <JSExport>
// 背景色， 不能和系统类重名，否则失效
@property (nonatomic, strong) UIColor *bgColor;
@property (nonatomic, strong, readonly) NSObject *super;
@property (nonatomic, assign, readonly) CGFloat left;
@property (nonatomic, assign, readonly) CGFloat top;
@property (nonatomic, assign, readonly) CGFloat width;
@property (nonatomic, assign, readonly) CGFloat height;
@end

@interface UIView (UI) <UIViewUIJSExport>
@property (nonatomic, strong) UIColor *bgColor;
@property (nonatomic, strong, readonly) NSObject *super;
@property (nonatomic, assign, readonly) CGFloat left;
@property (nonatomic, assign, readonly) CGFloat top;
@property (nonatomic, assign, readonly) CGFloat width;
@property (nonatomic, assign, readonly) CGFloat height;
@end

NS_ASSUME_NONNULL_END
