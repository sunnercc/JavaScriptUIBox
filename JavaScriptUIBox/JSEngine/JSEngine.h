//
//  JSEngine.h
//  JavaScriptUIBox
//
//  Created by sunner on 2021/2/27.
//  Copyright © 2021 sunner. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JSEngine : NSObject

- (instancetype)initWithScript:(NSString *)script containerView:(UIView *)containerView;
- (void)run;

@end

NS_ASSUME_NONNULL_END
