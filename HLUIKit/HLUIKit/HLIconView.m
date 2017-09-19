//
//  HLIconView.m
//  HLUIKit
//
//  Created by HomerLynn on 2017/9/19.
//  Copyright © 2017年 HomerLynn. All rights reserved.
//

#import "HLIconView.h"
#import "HLViewProtocol.h"

@interface HLIconView () <HLViewProtocol>

@property (nonatomic, strong) UIImageView *icon;
@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation HLIconView

#pragma mark - Initializer

- (instancetype)init {
    if (self = [super init]) {
        [self hl_setupSubviews];
    }
    return self;
}

#pragma mark - HLViewProtocol

/// Add all subviews to super view.
- (void)hl_setupSubviews {
    [self addSubview:self.icon];
    [self addSubview:self.titleLabel];

    [self hl_makeSubviewsContrains];
}

/// Make subviews constrains.
- (void)hl_makeSubviewsContrains {
    [self.icon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(self);
    }];

    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.right.equalTo(self);
        make.height.equalTo(self.icon.mas_bottom);
        make.height.equalTo(@15);
    }];
}

#pragma mark - Setter

- (void)setTitleHidden:(BOOL)titleHidden {
    _titleHidden = titleHidden;
    self.titleLabel.hidden = YES;
    [self.titleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@0);
    }];
}

- (void)setIconPadding:(HLPadding)iconPadding {
    _iconPadding = iconPadding;
    [self.icon mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(iconPadding.paddingTop);
        make.left.equalTo(self).offset(iconPadding.paddingLeft);
        make.bottom.equalTo(self).offset(iconPadding.paddingBottom);
        make.right.equalTo(self).offset(iconPadding.paddingRight);
    }];
}

#pragma mark - Getter

/// Getter of icon imageview.
- (UIImageView *)icon {
    if (_icon == nil) {
        _icon = [UIImageView new];
        _icon.backgroundColor = [UIColor whiteColor];
    }
    return _icon;
}

/// Getter of title label.
- (UILabel *)titleLabel {
    if (_titleLabel == nil) {
        _titleLabel = [UILabel new];
        _titleLabel.numberOfLines = 0;
        _titleLabel.lineBreakMode = NSLineBreakByCharWrapping;
        _titleLabel.backgroundColor = [UIColor whiteColor];
    }
    return _titleLabel;
}

@end
