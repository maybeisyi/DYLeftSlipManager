//
//  DYLeftSlipManager.h
//  DYLeftSlipManager
//  左滑管理器
//  Created by daiyi on 2016/11/9.
//  Copyright © 2016年 DY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DYLeftSlipManager : UIPercentDrivenInteractiveTransition

/**
 *	@brief	单例方法
 *  @return instancetype  DYLeftSlipManager左滑管理器实例
 */
+ (instancetype)sharedManager;

/**
 *	@brief	设置左滑视图及主视图
 *	@param 	leftViewController  左侧菜单视图控制器
 *	@param 	coverViewController  主控制器
 */
- (void)setLeftViewController:(UIViewController *)leftViewController coverViewController:(UIViewController *)coverViewController;

/**
 *	@brief	显示左滑视图
 */
- (void)showLeftView;

/**
 *	@brief	取消显示侧滑视图
 */
- (void)dismissLeftView;

@end
