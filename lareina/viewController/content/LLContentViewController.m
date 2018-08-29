//
//  LLContentViewController.m
//  lareina
//
//  Created by 孙晨 on 2018/8/29.
//  Copyright © 2018年 lucky. All rights reserved.
//

#import "LLContentViewController.h"
#import "LLDetailViewController.h"
@interface LLContentViewController ()

@end

@implementation LLContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 200, 100, 44);
    btn.backgroundColor = [UIColor whiteColor];
    [btn setTitle:@"点击跳转" forState: UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (void) btnClick {
    LLDetailViewController *detail = [[LLDetailViewController alloc]init];
    detail.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:detail animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
