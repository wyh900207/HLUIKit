//
//  HLImageItemCell.m
//  HLUIKit
//
//  Created by 王源鸿 on 2017/9/19.
//  Copyright © 2017年 王源鸿. All rights reserved.
//

#import "HLImageItemCell.h"

@implementation HLImageItemCell

- (instancetype)init {
    if (self = [super init]) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    self.backgroundColor = [UIColor orangeColor];
}

@end
