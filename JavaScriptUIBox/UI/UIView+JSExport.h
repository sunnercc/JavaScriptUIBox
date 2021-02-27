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

@protocol UIViewJSExport <JSExport>
@property (nonatomic, strong) UIColor *bgColor; // 不能和系统类重名，否则失效
@end

@interface UIView (JSExport) <UIViewJSExport>
@property (nonatomic, strong) UIColor *bgColor;
@end

NS_ASSUME_NONNULL_END
