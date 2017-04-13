//
//  BaseViewController.m
//  DYLeftSlipManager
//  该控制器是自定义返回按钮的控制器
//  Created by 戴奕 on 2017/4/12.
//  Copyright © 2017年 DY. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<UIGestureRecognizerDelegate>

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
        
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"asdasd" style:UIBarButtonItemStyleDone target:self action:@selector(popAction)];
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100)];
    [btn setTitle:@"点我再push一个页面" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)popAction {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)pushAction {
    [self.navigationController pushViewController:[self.class new] animated:YES];
}

@end
