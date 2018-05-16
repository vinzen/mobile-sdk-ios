//
//  SimpleWebViewController.m
//  SimpleBanner
//
//  Created by Abhishek.Sharma on 5/16/18.
//  Copyright © 2018 AppNexus. All rights reserved.
//

#import "SimpleWebViewController.h"
#import <WebKit/WKWebView.h>
@interface SimpleWebViewController ()
@property (weak, nonatomic) IBOutlet WKWebView *webViewOutlet;

@end

@implementation SimpleWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:self.clickThroughURL];
    NSURLRequest *returnClickThroughURL = [NSURLRequest requestWithURL:url];
    [self.webViewOutlet loadRequest:returnClickThroughURL];
    // Do any additional setup after loading the view.
}
- (IBAction)btCloseAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
