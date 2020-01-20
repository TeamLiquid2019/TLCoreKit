//
//  TLCoreMacro.h
//
//  Created by Eric on 2019/4/26.
//  Copyright © 2019 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//RGB颜色
#define RGBColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]

//屏幕尺寸
#define ScreenHeight    [[UIScreen mainScreen] bounds].size.height
#define ScreenWidth     [[UIScreen mainScreen] bounds].size.width

//时间转换
#define MonthToSeconds(x)      (x * 30 * 24* 60 * 60)
#define DaysToSeconds(x)      (x * 24 * 60 * 60)
#define MinsToSeconds(x)      (x * 60)
















