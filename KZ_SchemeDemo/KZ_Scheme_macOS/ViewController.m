//
//  ViewController.m
//  KZ_Scheme_macOS
//
//  Created by Kieron Zhang on 2018/5/7.
//  Copyright © 2018年 Kieron Zhang. All rights reserved.
//

#import "ViewController.h"
#import <KZ_Scheme_macOS/KZ_Scheme.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (@available(macOS 10.12, *)) {
        NSButton *button = [NSButton buttonWithTitle:@"Tapped" target:self action:@selector(buttonTapped)];
        button.frame = CGRectMake(10, 10, 100, 100);
        [self.view addSubview:button];
    }
}

- (void)buttonTapped {
    [KZ_Scheme queryURL:[NSURL URLWithString:@"kieronScheme://second?a=1&b=2"] object:self];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}

@end
