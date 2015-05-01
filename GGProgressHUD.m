//
//  GGProgressHUD.m
//  GGProgressHUD
//
//  Created by __无邪_ on 15/5/1.
//  Copyright (c) 2015年 __无邪_. All rights reserved.
//

#import "GGProgressHUD.h"

#define kGGProgressHUDMaskType @"GGProgressHUDMaskType"


@interface GGProgressHUD ()

@end



@implementation GGProgressHUD


+ (instancetype)sharedInstance{
    static GGProgressHUD *HUD;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        HUD = [[GGProgressHUD alloc] init];
        HUD.maskType = GGProgressHUDMaskTypeNone;
    });
    return HUD;
}

#pragma mark - Private
/*
 *
 * 激活锁定，点击时可操作
 *
 */
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    GGProgressHUDMaskType maskType = [[[NSUserDefaults standardUserDefaults] objectForKey:kGGProgressHUDMaskType] intValue];
    if (maskType == GGProgressHUDMaskTypeNone) {
        return NO;
    }
    
    return YES;
}
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    GGProgressHUDMaskType maskType = [[[NSUserDefaults standardUserDefaults] objectForKey:kGGProgressHUDMaskType] intValue];
    if (maskType == GGProgressHUDMaskTypeNone) {
        return nil;
    }
    
    return self;
}
-(void)setMaskType:(GGProgressHUDMaskType)maskType{
    [[NSUserDefaults standardUserDefaults] setInteger:maskType forKey:kGGProgressHUDMaskType];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


#pragma mark - Public

+ (instancetype)showTip:(NSString *)text afterDelay:(NSTimeInterval)delay{ //自定义view
    
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    
    
    GGProgressHUD *hud = [self showHUDAddedTo:window animated:YES];
    
    // Configure CustomView
    UILabel *backg = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 260, 80)];
    backg.backgroundColor = [UIColor whiteColor];
    backg.textAlignment = NSTextAlignmentCenter;
    backg.textColor = [UIColor darkGrayColor];
    backg.layer.cornerRadius = 10;
    backg.layer.masksToBounds = YES;
    
    NSString *fixText = text?:@"";
    backg.text = fixText;
    
    hud.margin = 0.f;
    hud.mode = MBProgressHUDModeCustomView;
    hud.customView = backg;
    hud.dimBackground = NO;
    hud.backgroundColor = [UIColor colorWithWhite:0.000 alpha:0.210];
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:delay];
    
    return hud;
    
}


@end
