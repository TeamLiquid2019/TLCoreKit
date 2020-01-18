//
//  TLCoreUser.m
//
//  Created by Eric on 2019/4/26.
//  Copyright © 2019 Eric. All rights reserved.
//

#import "TLCoreUser.h"

#import "Model/TLCoreUserInfo.h"
#import <YYKit/NSObject+YYModel.h>
#import <TLFileManager.h>

#define TLCORE_USER_INFO @"TLCoreUserInfo"

@interface TLCoreUser ()<NSCopying,NSMutableCopying>

@property(nonatomic,strong)TLCoreUserInfo *tlCoreUserInfo;

@end

@implementation TLCoreUser

static TLCoreUser *instance;

#pragma mark - < 单例 >

+(instancetype)shareInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (id)copyWithZone:(NSZone *)zone{
    return [TLCoreUser shareInstance];
}

- (id)mutableCopyWithZone:(NSZone *)zone{
    return [TLCoreUser shareInstance];
}

#pragma mark - < 初始化方法 >

- (instancetype)init{
    if (self = [super init]) {
        NSString *tluserinfo_jsonStr = [[NSUserDefaults standardUserDefaults] objectForKey:TLCORE_USER_INFO];
        if (tluserinfo_jsonStr && tluserinfo_jsonStr.length>0) {
            self.tlCoreUserInfo = [TLCoreUserInfo modelWithJSON:tluserinfo_jsonStr];
        }
    }
    return self;
}

#pragma mark - < 外部方法 >

/// 获取注册手机验证码
/// @param phoneNumber 手机号
/// @param block 返回结果
- (void)getRegSMSWithPhoneNumber:(NSString *)phoneNumber andCompletedBlock:(void(^)(BOOL isSuccess,NSString *code))block{
    
}

/// 获取登录手机验证码
/// @param phoneNumber 手机号
/// @param block 返回结果
- (void)getLoginSMSWithPhoneNumber:(NSString *)phoneNumber andCompletedBlock:(void(^)(BOOL isSuccess,NSString *code))block{
    
}

/// 手机号注册
/// @param phoneNumber 手机号
/// @param smsCode 验证码
/// @param block 返回结果
- (void)regWithPhoneNumber:(NSString *)phoneNumber andSMSCode:(NSString *)smsCode andCompletedBlock:(void(^)(BOOL isSuccess,NSString *code))block{
    
}

/// 手机号密码登录
/// @param phoneNumber 手机号
/// @param password 密码
/// @param block 返回结果
- (void)loginWithPhoneNumber:(NSString *)phoneNumber andPassword:(NSString *)password andCompletedBlock:(void(^)(BOOL isSuccess))block{
    
}

/// 手机号验证码登录
/// @param phoneNumber 手机号
/// @param smsCode 验证码
/// @param block 返回结果
- (void)loginWithPhoneNumber:(NSString *)phoneNumber andSMSCode:(NSString *)smsCode andCompletedBlock:(void(^)(BOOL isSuccess))block{
    
}

/// 该设备是否已存在登录用户
- (BOOL)isLogin{
    if (self.tlCoreUserInfo && self.tlCoreUserInfo.userId && self.tlCoreUserInfo.phoneNumber) {
        return YES;
    }else{
        return NO;
    }
}

/// 登出
/// @param block 返回结果
- (void)logoutWithCompletedBlock:(void(^)(BOOL isSuccess,NSString *code))block{
    NSString *string = [TLFileManager pathForApplicationSupportDirectory];
    NSLog(@"string  =  %@",string);
}


/// 获取当前登录用户基本信息
- (TLCoreUserInfo *)getTLCoreUserInfo{
    return self.tlCoreUserInfo;
}




@end
