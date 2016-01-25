//
//  ViewController.m
//  WebUrl
//
//  Created by CLPricingTeam on 1/28/15.
//  Copyright (c) 2015 Philips. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"ipad_background.jpg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.view.backgroundColor=[UIColor colorWithPatternImage:image];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)openSafari:(id)sender
{

[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com"]];

}

@end
