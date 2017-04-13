//
//  ViewController.m
//  DYLeftSlipManager
//
//  Created by daiyi on 2016/11/9.
//  Copyright © 2016年 DY. All rights reserved.
//

#import "ViewController.h"
#import "BaseViewController.h"

#import "DYLeftSlipManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.translucent = NO;
}

- (IBAction)click:(id)sender {
    // 代码唤出左滑视图
    [[DYLeftSlipManager sharedManager] showLeftView];
}

- (IBAction)pushAction:(id)sender {
    // push下一个vc
    BaseViewController *vc = [[BaseViewController alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
