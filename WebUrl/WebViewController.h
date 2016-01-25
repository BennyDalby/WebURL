//
//  WebViewController.h
//  WebUrl
//
//  Created by CLPricingTeam on 1/28/15.
//  Copyright (c) 2015 Philips. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController<NSURLConnectionDelegate>
{
    
 
    
    
}


@property(nonatomic)IBOutlet UIWebView *webView ;
@property(nonatomic)IBOutlet UIActivityIndicatorView *activityIndicator ;
@property (strong, nonatomic) IBOutlet UILabel *loading_label;

@end
