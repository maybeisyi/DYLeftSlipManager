//
//  DYLeftSlipManager.h
//  DYLeftSlipManager
//
//  Created by daiyi on 2016/11/9.
//  Copyright © 2016年 DY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DYLeftSlipManager : UIPercentDrivenInteractiveTransition

/// 单例方法
+ (instancetype)sharedManager;
/// 设置左滑视图及主视图
- (void)setLeftViewController:(UIViewController *)leftViewController coverViewController:(UIViewController *)coverViewController;
/// 显示左滑视图
- (void)showLeftView;

@end
