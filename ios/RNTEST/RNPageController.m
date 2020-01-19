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

#import "ReactInteraction.h"

@interface RNPageController ()



@end

@implementation RNPageController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //[self initRCTRootView];


}

#define RNBounds CGRectMake(0, self.view.frame.size.height*2/3, self.view.frame.size.width, self.view.frame.size.height/3.f)
-(void)initRCTRootView:(NSString*)moduleName{
    NSURL *jsCodeLocation;

    jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];

    RCTRootView *rnView =
    [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                                moduleName: moduleName
                         initialProperties:nil
                             launchOptions: nil];
    
    
    rnView.frame = RNBounds;
    //rnView.center = self.view.center;
    [self.view addSubview:rnView];
    
    // 设置ReactInteraction的桥接文件，不设置iOS将不能调起来RN的事件（重要）！！！！！！！
    [[ReactInteraction shareInstance] setValue:rnView.bridge forKey:@"bridge"];
}




//////////////////////////////// iOS调用RN ////////////////////////////

- (IBAction)openRNOne{
    [self initRCTRootView:@"App"];
    
}

- (IBAction)openRNTwo{
    [self initRCTRootView:@"App2"];
}

- (IBAction)removeRNPage{
    [self.view.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[RCTRootView class]]) {
            [obj removeFromSuperview];
            return;
        }
    }];
}

- (IBAction)iOSTransferRNWithNoparameter{
    [self openRNOne];
    [[ReactInteraction shareInstance] login];
    
}

- (IBAction)iOSTransferRNWithPatameter{
    
    [self openRNOne];
    NSString *parameter = @"@{@\"appid\":@\"123456\",@\"appKey\":@\"aaaaaa\"}";
    [[ReactInteraction shareInstance] init:parameter];
}


@end
