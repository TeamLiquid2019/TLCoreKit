//
//  TLCOREViewController.m
//  TLCoreKit
//
//  Created by daxiangwork on 01/17/2020.
//  Copyright (c) 2020 daxiangwork. All rights reserved.
//

#import "TLCOREViewController.h"


#import <TLCoreUser.h>

#import <TLCoreUserInfo.h>

@interface TLCOREViewController ()

@end

@implementation TLCOREViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    BOOL isLogin = [[TLCoreUser shareInstance] isLogin];
    
    if (isLogin) {
        NSLog(@"登录了");
    }else{
        NSLog(@"未登录");
    }
    
    [[TLCoreUser shareInstance] logoutWithCompletedBlock:^(BOOL isSuccess, NSString * _Nonnull code) {
        NSLog(@"%@",code);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
