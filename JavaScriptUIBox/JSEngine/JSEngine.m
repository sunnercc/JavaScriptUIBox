//
//  JSEngine.m
//  JavaScriptUIBox
//
//  Created by sunner on 2021/2/27.
//  Copyright © 2021 sunner. All rights reserved.
//

#import "JSEngine.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import "TypeConvert.h"
#import "ColorConvert.h"
#import "JSRenderManager.h"

@implementation JSEngine
{
    JSVirtualMachine *_jsvm;
    JSContext *_context;
    NSString *_script;
    UIView *_containerView;
}

- (instancetype)initWithScript:(NSString *)script containerView:(UIView *)containerView {
    if (self = [super init]) {
        _jsvm = [[JSVirtualMachine alloc] init];
        _context = [[JSContext alloc] initWithVirtualMachine:_jsvm];
        _script = script;
        _containerView = containerView;
        
        // 注册OC方法到JS环境
        [self registerOcToJs];
        
        // 初始化JS环境脚本
        NSString *jsPath = [[NSBundle mainBundle] pathForResource:@"engine.js" ofType:nil];
        NSString *jsString = [NSString stringWithContentsOfFile:jsPath encoding:NSUTF8StringEncoding error:nil];
        [_context evaluateScript:jsString];
    }
    return self;
}

- (void)run {
    [_context evaluateScript:_script];
}

- (void)registerOcToJs {
    // 打印
    _context[@"oc_log"] = ^(JSValue *value) {
        NSLog(@"%@", value);
    };
    // 类型转换
    _context[@"oc_type_convert"] = ^(JSValue *args, JSValue *type) {
        return [TypeConvert convertWithArgs:args type:type];
    };
    
    // color
    _context[@"oc_color"] = ^(JSValue *args) {
        return [ColorConvert colorWithArgs:args];
    };
    
    // UI渲染
    typeof(self) ws = self;
    _context[@"oc_ui"] = ^(JSValue *name, JSValue *data) {
        if ([[name toString] isEqualToString:@"render"]) {
            [JSRenderManager renderWithData:data superView:ws->_containerView];
        }
    };
}

@end
