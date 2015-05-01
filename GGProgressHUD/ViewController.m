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
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    [window setBackgroundColor:[UIColor redColor]];
    
//    [self showTip:@"请点击下面按钮"];
    [[GGProgressHUD sharedInstance] setMaskType:GGProgressHUDMaskTypeNone];
    [GGProgressHUD showTip:@"请点击下面按钮" afterDelay:30];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Action

- (IBAction)clickAction:(id)sender {
    [self.tipButton setTitle:@"Yes, you did it !" forState:UIControlStateNormal];
}


- (void)showTip:(NSString *)text{ //自定义view
    
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    GGProgressHUD *hud = [GGProgressHUD showHUDAddedTo:window animated:YES];
    
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
    [hud show:YES];
    
}

@end
