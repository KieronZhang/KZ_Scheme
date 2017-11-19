//
//  KZ_Scheme.h
//  KZ_Scheme
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KZ_Scheme : NSObject

+ (void)saveSchemeForNormal:(NSString *)schemeString;
+ (instancetype)registForNormalScheme;
+ (instancetype)registForScheme:(NSString *)schemeString;

+ (void)unregistForScheme:(NSString *)schemeString;
+ (void)unregistAllSchemes;

+ (void)addPattenWithString:(NSString *)pattenString success:(void (^)(NSDictionary *dictionary))success;
- (void)addPattenWithString:(NSString *)pattenString success:(void (^)(NSDictionary *dictionary))success;

+ (void)removePattenWithString:(NSString *)pattenString;
- (void)removePattenWithString:(NSString *)pattenString;

+ (BOOL)queryURLString:(NSString *)URLString;
+ (BOOL)queryURL:(NSURL *)URL;

- (BOOL)queryURLString:(NSString *)URLString;
- (BOOL)queryURL:(NSURL *)URL;

+ (BOOL)queryURLString:(NSString *)URLString object:(id)object;
+ (BOOL)queryURL:(NSURL *)URL object:(id)object;

- (BOOL)queryURLString:(NSString *)URLString object:(id)object;
- (BOOL)queryURL:(NSURL *)URL object:(id)object;

+ (BOOL)canQueryURLString:(NSString *)URLString;
+ (BOOL)canQueryURL:(NSURL *)URL;

- (BOOL)canQueryURLString:(NSString *)URLString;
- (BOOL)canQueryURL:(NSURL *)URL;

+ (NSDictionary *)dictionaryWithURLQuery:(NSString *)queryString;

@end
