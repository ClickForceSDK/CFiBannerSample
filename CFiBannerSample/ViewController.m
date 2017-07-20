//
//  ViewController.m
//  CFiBannerSample
//
//  Created by Charles on 2017/7/20.
//  Copyright © 2017年 clickforce. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect r = self.view.frame;
    
    banner = [[MFBannerView alloc] initWithAdSize:MFAdSize320X50 origin:CGPointMake((r.size.width-320)/2, r.size.height-50)];
    
    [banner setBannerAlignment:Alignment_Center];
    [banner setAdAutoRefreshTime:30];
    [banner setBannerBackgroudColor:[UIColor redColor]];
    banner.bannerId = @"3783" ;
    
    [self.view addSubview:banner];
    [banner requestAd];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
