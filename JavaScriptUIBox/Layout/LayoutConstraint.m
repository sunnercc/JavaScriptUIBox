//
//  LayoutConstraint.m
//  JavaScriptUIBox
//
//  Created by sunner on 2021/3/1.
//  Copyright © 2021 sunner. All rights reserved.
//

#import "LayoutConstraint.h"

@implementation LayoutConstraint
{
    __weak MASConstraint *_constraint;
}

- (LayoutConstraint *)left {
    return [[LayoutConstraint alloc] initWithMasConstraint:_constraint.left];
}

- (LayoutConstraint *)right {
    return [[LayoutConstraint alloc] initWithMasConstraint:_constraint.right];
}

- (LayoutConstraint *)top {
    return [[LayoutConstraint alloc] initWithMasConstraint:_constraint.top];
}

- (LayoutConstraint *)bottom {
    return [[LayoutConstraint alloc] initWithMasConstraint:_constraint.bottom];
}

- (LayoutConstraint *)width {
    return [[LayoutConstraint alloc] initWithMasConstraint:_constraint.width];
}

- (LayoutConstraint *)height {
    return [[LayoutConstraint alloc] initWithMasConstraint:_constraint.height];
}

- (LayoutConstraint *)equalTo:(id)attr; {
    return [[LayoutConstraint alloc] initWithMasConstraint:_constraint.equalTo(attr)];
}

- (instancetype)initWithMasConstraint:(MASConstraint *)constraint {
    if (self = [super init]) {
        _constraint = constraint;
    }
    return self;
}
@end
