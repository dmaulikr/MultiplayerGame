//
//  ViewController.h
//  NumbeoUniversal
//
//  Created by paul favier on 10/03/14.
//  Copyright (c) 2014 MonCocoPilote. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/ADBannerView.h"
#import "MYIntroductionView.h"

@interface ViewController : UIViewController <ADBannerViewDelegate,MYIntroductionDelegate>
{
    ADBannerView *adView;
}

-(IBAction)helpCmd:(id)sender;

@property (nonatomic, retain) IBOutlet ADBannerView *adView;

@end
