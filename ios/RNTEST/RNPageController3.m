//
//  RNPageController3.m
//  RNTEST
//
//  Created by udc on 2019/10/21.
//  Copyright © 2019 udc. All rights reserved.
//

#import "RNPageController3.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTEventEmitter.h>

@interface RNPageController3 ()

@end

@implementation RNPageController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initRCTRootView:@"App2"];
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
    //[[ReactInteraction shareInstance] setValue:rnView.bridge forKey:@"bridge"];
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
