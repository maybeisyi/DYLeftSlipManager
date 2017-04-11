//
//  LeftTableViewController.m
//  DYLeftSlipManager
//  这只是个左滑出来的VC，不管关心它内部的代码，完全解耦的
//  Created by daiyi on 2016/11/9.
//  Copyright © 2016年 DY. All rights reserved.
//

#import "LeftTableViewController.h"
#import "DYLeftSlipManager.h"

@interface LeftTableViewController ()

@end

@implementation LeftTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor brownColor];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [[DYLeftSlipManager sharedManager] dismissLeftView];
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}

@end
