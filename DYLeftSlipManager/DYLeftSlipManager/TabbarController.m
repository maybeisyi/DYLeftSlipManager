//
//  TabbarController.m
//  DYLeftSlipManager
//
//  Created by daiyi on 2016/11/9.
//  Copyright © 2016年 DY. All rights reserved.
//

#import "TabbarController.h"
#import "DYLeftSlipManager.h"
#import "LeftTableViewController.h"

@interface TabbarController ()

@end

@implementation TabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.layer.shadowOpacity = 1;
    self.view.layer.shadowColor = [UIColor colorWithWhite:0 alpha:1].CGColor;
    
    [[DYLeftSlipManager sharedManager] setLeftViewController:[LeftTableViewController new] coverViewController:self];
}

@end
