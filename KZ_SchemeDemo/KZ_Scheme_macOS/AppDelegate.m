//
//  AppDelegate.m
//  KZ_Scheme_macOS
//
//  Created by Kieron Zhang on 2018/5/7.
//  Copyright © 2018年 Kieron Zhang. All rights reserved.
//

#import "AppDelegate.h"
#import <KZ_Scheme_macOS/KZ_Scheme.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [KZ_Scheme saveSchemeForNormal:@"kieronScheme"];
    [KZ_Scheme registForNormalScheme];
    [KZ_Scheme addPattenWithString:@"second" execute:^id(NSDictionary *dictionary) {
        NSLog(@"hello");
        return nil;
    }];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    
}

@end
