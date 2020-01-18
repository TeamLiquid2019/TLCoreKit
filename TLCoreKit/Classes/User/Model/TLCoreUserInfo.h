//
//  TLCoreUserInfo.h
//  TLCoreKit
//
//  Created by Eric on 2020/1/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TLCoreUserInfo : NSObject

@property(nonatomic,copy)NSString *userId;
@property(nonatomic,copy)NSString *phoneNumber;
@property(nonatomic,copy)NSString *refreshtoken;
@property(nonatomic,copy)NSString *divicetoken;

@end

NS_ASSUME_NONNULL_END
