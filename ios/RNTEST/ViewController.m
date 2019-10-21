//
//  ViewController.m
//  RNTEST
//
//  Created by udc on 2019/10/17.
//  Copyright © 2019 udc. All rights reserved.
//

#import "ViewController.h"
#import "RNPageController.h"
#import "RNPageController2.h"
#import "RNPageController3.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (IBAction)goRNPageButtonPressed:(id)sender {
    RNPageController *next = [[self storyboard] instantiateViewControllerWithIdentifier:@"RNPage"];
    [self presentViewController:next animated:YES completion:nil];
}


- (IBAction)goRNPage2ButtonPressed:(id)sender {
    RNPageController2 *next = [[self storyboard] instantiateViewControllerWithIdentifier:@"RNPage2"];
    [self presentViewController:next animated:YES completion:nil];
}
    
    - (IBAction)goRNPage3ButtonPressed:(id)sender {
        RNPageController2 *next = [[self storyboard] instantiateViewControllerWithIdentifier:@"RNPage3"];
        [self presentViewController:next animated:YES completion:nil];
    }
    
@end
