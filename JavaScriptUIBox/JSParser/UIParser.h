//
//  UIParser.h
//  JavaScriptCoreDemo
//
//  Created by sunner on 2021/2/27.
//  Copyright © 2021 sunner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>

NS_ASSUME_NONNULL_BEGIN

@protocol UIParserJSExport <JSExport>
JSExportAs(render, - (void)render:(NSDictionary *)object);
@end

@interface UIParser : NSObject <UIParserJSExport>
@property (nonatomic, strong) UIView *hostView;
@end

NS_ASSUME_NONNULL_END
