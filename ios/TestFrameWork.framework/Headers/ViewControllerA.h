//
//  ViewController.h
//  cycleScrollDemo
//
//  Created by 虞振兴 on 2017/11/7.
//  Copyright © 2017年 yuzx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserDAO.h"

@interface ViewControllerA : UIViewController

@property(weak,nonatomic)id<UserDAO> userDAO;

@end

