//
//  HLViewProtocol.h
//  HLUIKit
//
//  Created by HomerLynn on 2017/9/19.
//  Copyright © 2017年 HomerLynn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Masonry/Masonry.h>

@protocol HLViewProtocol <NSObject>

@required

- (void)hl_setupSubviews;
- (void)hl_makeSubviewsContrains;

@optional

- (void)hl_updateSubviewsContrains;

@end
