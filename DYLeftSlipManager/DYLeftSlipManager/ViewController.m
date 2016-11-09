//
//  ViewController.m
//  DYLeftSlipManager
//
//  Created by daiyi on 2016/11/9.
//  Copyright © 2016年 DY. All rights reserved.
//

#import "ViewController.h"
#import "DYLeftSlipManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)click:(id)sender {
    // 代码唤出左滑视图
    [[DYLeftSlipManager sharedManager] showLeftView];
}


@end
