//
//  LLDetailViewController.m
//  lareina
//
//  Created by 孙晨 on 2018/8/29.
//  Copyright © 2018年 lucky. All rights reserved.
//

#import "LLDetailViewController.h"

@interface LLDetailViewController ()
@property (strong,nonatomic) UIWebView *webView;
@end

@implementation LLDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initWebView];
}
- (void)initWebView{
    // 1.创建webview，并设置大小，"20"为状态栏高度
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height - 20;
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0,20,width,height)];
    // 2.创建URL
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    // 3.创建Request
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    // 4.加载网页
    [webView loadRequest:request];
    // 5.最后将webView添加到界面
    [self.view addSubview:webView];
    self.webView = webView;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
