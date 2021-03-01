//
//  LayoutConstraintMaker.m
//  JavaScriptUIBox
//
//  Created by sunner on 2021/3/1.
//  Copyright © 2021 sunner. All rights reserved.
//

#import "LayoutConstraintMaker.h"

@implementation LayoutConstraintMaker
{
    __weak MASConstraintMaker *_maker;
}

- (LayoutConstraint *)left {
    return [[LayoutConstraint alloc] initWithMasConstraint:_maker.left];
}

- (LayoutConstraint *)right {
    return [[LayoutConstraint alloc] initWithMasConstraint:_maker.right];
}

- (LayoutConstraint *)top {
    return [[LayoutConstraint alloc] initWithMasConstraint:_maker.top];
}

- (LayoutConstraint *)bottom {
    return [[LayoutConstraint alloc] initWithMasConstraint:_maker.bottom];
}

- (LayoutConstraint *)width {
    return [[LayoutConstraint alloc] initWithMasConstraint:_maker.width];
}

- (LayoutConstraint *)height {
    return [[LayoutConstraint alloc] initWithMasConstraint:_maker.height];
}


- (instancetype)initWithMasConstraintMaker:(MASConstraintMaker *)maker {
    if (self = [super init]) {
        _maker = maker;
    }
    return self;
}

@end
