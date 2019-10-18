//
//  ViewController.m
//  RNTEST
//
//  Created by udc on 2019/10/17.
//  Copyright © 2019 udc. All rights reserved.
//

#import "ViewController.h"
#import <React/RCTRootView.h>

#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import "ReactInteraction.h"
@interface ViewController ()<RCTBridgeDelegate>
@property (nonatomic, strong) RCTBridge *bridge;

@end

@implementation ViewController

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {
    return [NSURL URLWithString:@"http://127.0.0.1:8081/index.bundle?platform=ios"];// 模拟器
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:nil];
}

- (IBAction)highScoreButtonPressed:(id)sender {
    
    [self loadRNView:@"RNTEST"];
//    NSLog(@"High Score Button Pressed");
//    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://127.0.0.1:8081/index.bundle?platform=ios"];
//
//    RCTRootView *rootView =
//    [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
//                                moduleName: @"RNTEST"
//                         initialProperties:
//     @{
//       @"scores" : @[
//               @{
//                   @"name" : @"Alex",
//                   @"value": @"42"
//                   },
//               @{
//                   @"name" : @"Joel",
//                   @"value": @"10"
//                   }
//               ]
//       }
//                             launchOptions: nil];
//    UIViewController *vc = [[UIViewController alloc] init];
//    vc.view = rootView;
//    [self presentViewController:vc animated:YES completion:nil];
}
#define RNBounds CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width-50, UIScreen.mainScreen.bounds.size.height/3.f)

- (void)loadRNView:(NSString *)moduleName {
    RCTRootView *rnView = [[RCTRootView alloc] initWithBridge:_bridge
                                                   moduleName:moduleName
                                            initialProperties:nil];
    // 设置ReactInteraction的桥接文件，不设置iOS将不能调起来RN的事件（重要）！！！！！！！
    [[ReactInteraction shareInstance] setValue:rnView.bridge forKey:@"bridge"];
    
    rnView.bounds = RNBounds;
    rnView.center = self.view.center;
    [self.view addSubview:rnView];
}


@end
