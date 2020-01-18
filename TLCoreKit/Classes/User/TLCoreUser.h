//
//  TLCoreUser.h
//
//  Created by Eric on 2019/4/26.
//  Copyright © 2019 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class TLCoreUserInfo;

@interface TLCoreUser : NSObject

+ (instancetype)shareInstance;

/// 获取注册手机验证码
/// @param phoneNumber 手机号
/// @param block 返回结果
- (void)getRegSMSWithPhoneNumber:(NSString *)phoneNumber andCompletedBlock:(void(^)(BOOL isSuccess,NSString *code))block;

/// 获取登录手机验证码
/// @param phoneNumber 手机号
/// @param block 返回结果
- (void)getLoginSMSWithPhoneNumber:(NSString *)phoneNumber andCompletedBlock:(void(^)(BOOL isSuccess,NSString *code))block;

/// 手机号注册
/// @param phoneNumber 手机号
/// @param smsCode 验证码
/// @param block 返回结果
- (void)regWithPhoneNumber:(NSString *)phoneNumber andSMSCode:(NSString *)smsCode andCompletedBlock:(void(^)(BOOL isSuccess,NSString *code))block;

/// 手机号密码登录
/// @param phoneNumber 手机号
/// @param password 密码
/// @param block 返回结果
- (void)loginWithPhoneNumber:(NSString *)phoneNumber andPassword:(NSString *)password andCompletedBlock:(void(^)(BOOL isSuccess))block;

/// 手机号验证码登录
/// @param phoneNumber 手机号
/// @param smsCode 验证码
/// @param block 返回结果
- (void)loginWithPhoneNumber:(NSString *)phoneNumber andSMSCode:(NSString *)smsCode andCompletedBlock:(void(^)(BOOL isSuccess))block;

/// 该设备是否已存在登录用户
- (BOOL)isLogin;

/// 登出
/// @param block 返回结果
- (void)logoutWithCompletedBlock:(void(^)(BOOL isSuccess,NSString *code))block;


/// 获取当前登录用户基本信息
- (TLCoreUserInfo *)getTLCoreUserInfo;

@end

NS_ASSUME_NONNULL_END
