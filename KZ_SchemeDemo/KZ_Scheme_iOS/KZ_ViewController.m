//
//  KZ_ViewController.m
//  KZ_Scheme
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import "KZ_ViewController.h"

@interface KZ_ViewController ()

@end

@implementation KZ_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    if ([self.delegate respondsToSelector:@selector(viewControllerTapped)]) {
        [self.delegate viewControllerTapped];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
