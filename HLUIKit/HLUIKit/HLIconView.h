//
//  HLIconView.h
//  HLUIKit
//
//  Created by HomerLynn on 2017/9/19.
//  Copyright © 2017年 HomerLynn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HLPadding.h"

@interface HLIconView : UIView

/// Icon image's name
@property (nonatomic, copy  ) NSString *iconName;
/// Content text
@property (nonatomic, copy  ) NSString *title;
/// Hidden title or not
@property (nonatomic, assign) BOOL      titleHidden;
/// Icon image's paddings
@property (nonatomic, assign) HLPadding iconPadding;
@property (nonatomic, assign) CGFloat   iconPaddingTop;
@property (nonatomic, assign) CGFloat   iconPaddingBottom;
@property (nonatomic, assign) CGFloat   iconPaddingLeft;
@property (nonatomic, assign) CGFloat   iconPaddingRight;
/// Content text's paddings
@property (nonatomic, assign) HLPadding titlePadding;
@property (nonatomic, assign) CGFloat   titlePaddingTop;
@property (nonatomic, assign) CGFloat   titlePaddingBottom;
@property (nonatomic, assign) CGFloat   titlePaddingLeft;
@property (nonatomic, assign) CGFloat   titlePaddingRight;

@end
