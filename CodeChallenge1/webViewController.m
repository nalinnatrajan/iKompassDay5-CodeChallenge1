//
//  webViewController.m
//  CodeChallenge1
//
//  Created by Ramlan's MacBook on 7/3/15.
//  Copyright (c) 2015 Ramlan's MacBook. All rights reserved.
//

#import "webViewController.h"

@interface webViewController () <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webPageLoad;

@property (weak, nonatomic) IBOutlet UINavigationItem *webTitle;

@end

@implementation webViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webTitle.title = self.webViewTitle;
    NSURL *url = [NSURL URLWithString:@"http://ikompass.edu.sg"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webPageLoad loadRequest:urlRequest];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
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
