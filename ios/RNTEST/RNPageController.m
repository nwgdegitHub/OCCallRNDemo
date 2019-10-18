//
//  RNPageController.m
//  RNTEST
//
//  Created by LiuWei on 2019/10/18.
//  Copyright © 2019 udc. All rights reserved.
//

#import "RNPageController.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTEventEmitter.h>
@interface RNPageController ()

@end

@implementation RNPageController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initRCTRootView];
}

-(void)initRCTRootView{
    NSURL *jsCodeLocation;
    
    jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];

    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                                moduleName: @"App1"
                         initialProperties:nil
                             launchOptions: nil];
    self.view = rootView;
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
