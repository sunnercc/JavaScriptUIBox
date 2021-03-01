//
//  LayoutConstraintMaker.h
//  JavaScriptUIBox
//
//  Created by sunner on 2021/3/1.
//  Copyright © 2021 sunner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import <Masonry/Masonry.h>
#import "LayoutConstraint.h"

NS_ASSUME_NONNULL_BEGIN

@protocol LayoutConstraintMakerJSExport <JSExport>
@property (nonatomic, strong, readonly) LayoutConstraint *left;
@property (nonatomic, strong, readonly) LayoutConstraint *right;
@property (nonatomic, strong, readonly) LayoutConstraint *top;
@property (nonatomic, strong, readonly) LayoutConstraint *bottom;
@property (nonatomic, strong, readonly) LayoutConstraint *width;
@property (nonatomic, strong, readonly) LayoutConstraint *height;
@end

@interface LayoutConstraintMaker : NSObject <LayoutConstraintMakerJSExport>
@property (nonatomic, strong, readonly) LayoutConstraint *left;
@property (nonatomic, strong, readonly) LayoutConstraint *right;
@property (nonatomic, strong, readonly) LayoutConstraint *top;
@property (nonatomic, strong, readonly) LayoutConstraint *bottom;
@property (nonatomic, strong, readonly) LayoutConstraint *width;
@property (nonatomic, strong, readonly) LayoutConstraint *height;

- (instancetype)initWithMasConstraintMaker:(MASConstraintMaker *)maker;
@end

NS_ASSUME_NONNULL_END
