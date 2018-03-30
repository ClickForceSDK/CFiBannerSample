//
//  ViewController.m
//  CFiBannerSample
//
//  Created by Charles on 2017/7/20.
//  Copyright © 2017年 clickforce. All rights reserved.
//

#import "ViewController.h"
#import <AdSupport/ASIdentifierManager.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    CGRect r = self.view.frame;
    
    banner = [[MFBannerView alloc] initWithAdSize:MFAdSize320X50 origin:CGPointMake((r.size.width-320)/2, r.size.height-50)];
    [banner setBannerAlignment:Alignment_Center];
    [banner setAdAutoRefresh:YES];
    banner.bannerId = @"3783" ;
    banner.delegate = self;
    [self.view addSubview:banner];
    [banner requestAd];
    
}

- (void)requestAdSuccess
{
    [banner show];
}

- (void)requestAdFail
{
    NSLog(@"廣告請求失敗");
}

- (void)onClickAd
{
    NSLog(@"Click Ad");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
