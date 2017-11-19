//
//  ViewController.m
//  KZ_Scheme
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import "ViewController.h"
#import <KZ_SchemeFramework/KZ_Scheme.h>

@interface ViewController () <KZ_ViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor yellowColor];
    button.frame = CGRectMake(0, 80, 100, 100);
    [button addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonTapped {
    //    NSDictionary *dictionary = @{@"i" : @"0", @"b" : @"1"};
    [KZ_Scheme queryURL:[NSURL URLWithString:@"qlzscheme://second?a=1&b=2"] object:self];
}

#pragma mark KZ_ViewControllerDelegate
- (void)viewControllerTapped {
    NSLog(@"ViewControllerTapped");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
