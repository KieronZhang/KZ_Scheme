//
//  AppDelegate.m
//  KZ_Scheme
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import "AppDelegate.h"
#import <KZ_SchemeFramework/KZ_Scheme.h>
#import "KZ_ViewController.h"
#import "KZ_ViewControllerDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [KZ_Scheme saveSchemeForNormal:@"qlzScheme"];
    [KZ_Scheme registForNormalScheme];
    [KZ_Scheme addPattenWithString:@"second" success:^(NSDictionary *dictionary) {
        KZ_ViewController *viewController = [[KZ_ViewController alloc] init];
        UIViewController *vc = dictionary[@"object"];
        viewController.delegate = (id<KZ_ViewControllerDelegate>)vc;
        [(UINavigationController *)self.window.rootViewController pushViewController:viewController animated:YES];
    }];
    return YES;
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *, id> *)options {
    return [KZ_Scheme queryURL:url];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return [KZ_Scheme queryURL:url];
}

- (void)applicationWillResignActive:(UIApplication *)application {

}

- (void)applicationDidEnterBackground:(UIApplication *)application {

}

- (void)applicationWillEnterForeground:(UIApplication *)application {

}

- (void)applicationDidBecomeActive:(UIApplication *)application {

}

- (void)applicationWillTerminate:(UIApplication *)application {

}

@end
