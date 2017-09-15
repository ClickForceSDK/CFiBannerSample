//
//  ViewController.h
//  CFiBannerSample
//
//  Created by Charles on 2017/7/20.
//  Copyright © 2017年 clickforce. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iMFAD/iMFAD.h>

@interface ViewController : UIViewController<MFBannerDelegate>
{
    MFBannerView *banner;
}


@end

