//
//  ViewController.m
//  GGProgressHUD
//
//  Created by __无邪_ on 15/5/1.
//  Copyright (c) 2015年 __无邪_. All rights reserved.
//

#import "ViewController.h"
#import "GGProgressHUD.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *tipButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [GGShowTip setMaskType:GGProgressHUDMaskTypeNone];
    [GGProgressHUD showTip:@"请点击下面按钮" afterDelay:30];
    
//    [GGShowTip showProgressWithText:@"safd" dealy:5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Action

- (IBAction)clickAction:(id)sender {
    [self.tipButton setTitle:@"Yes, you did it !" forState:UIControlStateNormal];
    [GGShowTip showTipTextOnly:@"按钮请点击下面按钮请点击下面按钮请点击下面按钮" dealy:50 position:GGProgressHUDPosition_bottom];
}


@end
