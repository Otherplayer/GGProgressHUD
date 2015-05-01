//
//  GGProgressHUD.m
//  GGProgressHUD
//
//  Created by __无邪_ on 15/5/1.
//  Copyright (c) 2015年 __无邪_. All rights reserved.
//

#import "GGProgressHUD.h"

@implementation GGProgressHUD


#pragma mark - Private
/*
 *
 * 激活锁定，点击时可操作
 *
 */
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    return NO;
}
- (UIView *)hitTest:(CGPoint)point
          withEvent:(UIEvent *)event{
    return nil;
}



@end
