//
//  LayoutConstraint.h
//  JavaScriptUIBox
//
//  Created by sunner on 2021/3/1.
//  Copyright © 2021 sunner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import <Masonry/Masonry.h>

NS_ASSUME_NONNULL_BEGIN

@class LayoutConstraint;
@protocol LayoutConstraintJSExport <JSExport>
@property (nonatomic, strong, readonly) LayoutConstraint *left;
@property (nonatomic, strong, readonly) LayoutConstraint *right;
@property (nonatomic, strong, readonly) LayoutConstraint *top;
@property (nonatomic, strong, readonly) LayoutConstraint *bottom;
@property (nonatomic, strong, readonly) LayoutConstraint *width;
@property (nonatomic, strong, readonly) LayoutConstraint *height;
- (LayoutConstraint *)equalTo:(id)attr;
@end

@interface LayoutConstraint : NSObject <LayoutConstraintJSExport>
- (LayoutConstraint *)equalTo:(id)attr;
- (instancetype)initWithMasConstraint:(MASConstraint *)constraint;
@end

NS_ASSUME_NONNULL_END
