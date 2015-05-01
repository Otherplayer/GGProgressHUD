//
//  GGProgressHUD.h
//  GGProgressHUD
//
//  Created by __无邪_ on 15/5/1.
//  Copyright (c) 2015年 __无邪_. All rights reserved.
//

#import "MBProgressHUD.h"

typedef NS_ENUM(NSUInteger, GGProgressHUDMaskType) {
    GGProgressHUDMaskTypeNone = 1,  // allow user interactions while HUD is displayed
    GGProgressHUDMaskTypeClear = 2,     // don't allow user interactions
};

@interface GGProgressHUD : MBProgressHUD
@property (nonatomic, assign) GGProgressHUDMaskType maskType;

+ (instancetype)sharedInstance;
+ (instancetype)showTip:(NSString *)text afterDelay:(NSTimeInterval)delay;

@end
