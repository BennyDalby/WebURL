//
//  WebViewController.m
//  WebUrl
//
//  Created by CLPricingTeam on 1/28/15.
//  Copyright (c) 2015 Philips. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadURL];
    
    [_activityIndicator startAnimating];
    _activityIndicator.hidden=NO;
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"background.jpeg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.view.backgroundColor=[UIColor colorWithPatternImage:image];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)loadURL
{
    
    NSURL *websiteUrl = [NSURL URLWithString:@"http://www.google.com"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
    [_webView loadRequest:urlRequest];
    NSURLConnection *theConnection=[[NSURLConnection alloc] initWithRequest:urlRequest delegate:self];
    _loading_label.hidden=NO;
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    
    
}


- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    
    
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    
    [_activityIndicator stopAnimating];
    _activityIndicator.hidden=YES ;
    _loading_label.hidden=YES ;
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
