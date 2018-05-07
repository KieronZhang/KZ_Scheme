//
//  KZ_Scheme.h
//  KZ_Scheme
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KZ_Scheme : NSObject

+ (void)saveSchemeForNormal:(NSString *)schemeString;
+ (instancetype)registForNormalScheme;
+ (instancetype)registForScheme:(NSString *)schemeString;

+ (void)unregistForScheme:(NSString *)schemeString;
+ (void)unregistAllSchemes;

+ (void)addPattenWithString:(NSString *)pattenString execute:(id (^)(NSDictionary *dictionary))execute;
- (void)addPattenWithString:(NSString *)pattenString execute:(id (^)(NSDictionary *dictionary))execute;

+ (void)removePattenWithString:(NSString *)pattenString;
- (void)removePattenWithString:(NSString *)pattenString;

+ (BOOL)queryURLString:(NSString *)URLString;
+ (BOOL)queryURLString:(NSString *)URLString completion:(void (^)(id object))completion;
+ (BOOL)queryURL:(NSURL *)URL;
+ (BOOL)queryURL:(NSURL *)URL completion:(void (^)(id object))completion;

- (BOOL)queryURLString:(NSString *)URLString;
- (BOOL)queryURLString:(NSString *)URLString completion:(void (^)(id object))completion;
- (BOOL)queryURL:(NSURL *)URL;
- (BOOL)queryURL:(NSURL *)URL completion:(void (^)(id object))completion;

+ (BOOL)queryURLString:(NSString *)URLString object:(id)object;
+ (BOOL)queryURLString:(NSString *)URLString object:(id)object completion:(void (^)(id object))completion;
+ (BOOL)queryURL:(NSURL *)URL object:(id)object;
+ (BOOL)queryURL:(NSURL *)URL object:(id)object completion:(void (^)(id object))completion;

- (BOOL)queryURLString:(NSString *)URLString object:(id)object;
- (BOOL)queryURLString:(NSString *)URLString object:(id)object completion:(void (^)(id object))completion;
- (BOOL)queryURL:(NSURL *)URL object:(id)object;
- (BOOL)queryURL:(NSURL *)URL object:(id)object completion:(void (^)(id object))completion;

+ (BOOL)canQueryURLString:(NSString *)URLString;
+ (BOOL)canQueryURL:(NSURL *)URL;

- (BOOL)canQueryURLString:(NSString *)URLString;
- (BOOL)canQueryURL:(NSURL *)URL;

+ (NSDictionary *)dictionaryWithURLQuery:(NSString *)queryString;

@end
