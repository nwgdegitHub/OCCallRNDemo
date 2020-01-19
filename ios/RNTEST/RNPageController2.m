//
//  RNPageController2.m
//  RNTEST
//
//  Created by LiuWei on 2019/10/19.
//  Copyright © 2019 udc. All rights reserved.
//

#import "RNPageController2.h"

#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

#import <TestFrameWork/ViewControllerA.h>

@interface RNPageController2 ()<UserDAO>
//<RCTBridgeDelegate>
@property (nonatomic,strong) ViewControllerA *vcA;

@end

@implementation RNPageController2

-(NSDictionary *)getUserInfo{
    return @{@"name":@"刘伟"};
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _vcA = [ViewControllerA new];
  
    _vcA.userDAO = self;
    
    
//    RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:nil];
//    RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge
//                                                     moduleName:@"App"
//                                              initialProperties:nil];
//    self.view=rootView;
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self presentViewController:_vcA animated:YES completion:nil];
  
}


//- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
//{
//#if DEBUG
//    return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
//#else
//    return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
//#endif
//}

@end
