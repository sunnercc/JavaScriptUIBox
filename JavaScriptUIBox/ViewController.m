//
//  ViewController.m
//  JavaScriptUIBox
//
//  Created by sunner on 2021/2/27.
//  Copyright © 2021 sunner. All rights reserved.
//

#import "ViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import "UIParser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    JSVirtualMachine *jsvm = [[JSVirtualMachine alloc] init];
    JSContext *context = [[JSContext alloc] initWithVirtualMachine:jsvm];
    
    UIParser *uiParser = [[UIParser alloc] init];
    uiParser.hostView = self.view;
    context[@"$UI"] = uiParser;
    
    NSString *jsPath = [[NSBundle mainBundle] pathForResource:@"index.js" ofType:nil];
    NSString *jsString = [NSString stringWithContentsOfFile:jsPath encoding:NSUTF8StringEncoding error:nil];
    [context evaluateScript:jsString];
}


@end
