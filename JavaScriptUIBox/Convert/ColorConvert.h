//
//  ColorConvert.h
//  JavaScriptUIBox
//
//  Created by sunner on 2021/2/28.
//  Copyright © 2021 sunner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>


NS_ASSUME_NONNULL_BEGIN

@interface ColorConvert : NSObject
+ (UIColor *)colorWithArgs:(JSValue *)args;
@end

NS_ASSUME_NONNULL_END
