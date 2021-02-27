//
//  ViewController.m
//  JavaScriptUIBox
//
//  Created by sunner on 2021/2/27.
//  Copyright © 2021 sunner. All rights reserved.
//

#import "ViewController.h"
#import "JSEngine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *jsPath = [[NSBundle mainBundle] pathForResource:@"index.js" ofType:nil];
    NSString *jsString = [NSString stringWithContentsOfFile:jsPath encoding:NSUTF8StringEncoding error:nil];
    JSEngine *engine = [[JSEngine alloc] initWithScript:jsString containerView:self.view];
    [engine run];
}


@end
