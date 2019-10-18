//
//  ViewController.m
//  RNTEST
//
//  Created by udc on 2019/10/17.
//  Copyright © 2019 udc. All rights reserved.
//

#import "ViewController.h"
#import "RNPageController.h"
@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (IBAction)highScoreButtonPressed:(id)sender {
    RNPageController *next = [[self storyboard] instantiateViewControllerWithIdentifier:@"RNPage"];
    [self presentViewController:next animated:YES completion:nil];
}



@end
