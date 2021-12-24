//
//  ZRProgressHUD.h
//  ZRProgressHUDDemo
//
//  Created by rogue on 2019/1/7.
//  Copyright © 2019 rogue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <MBProgressHUD/MBProgressHUD.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZRProgressHUD : NSObject

+ (void)showLoading:(UIViewController * _Nullable)viewController;

+ (void)showLoadingComplete:(UIViewController * _Nullable)viewController hideComplete:(nullable void (^)(void))hideComplete;

+ (void)showTips:(UIViewController * _Nullable)viewController tip:(NSString * _Nullable)tip delay:(float)delay;

+ (void)showTipsComplete:(UIViewController * _Nullable)viewController tip:(NSString * _Nullable)tip delay:(float)delay hideComplete:(nullable void (^)(void))hideComplete;

+ (void)showMessageOnWindow:(NSString * _Nullable)tip delay:(float)delay;

+ (void)showMessageOnWindowComplete:(NSString * _Nullable)tip delay:(float)delay hideComplete:(nullable void (^)(void))hideComplete;

+ (void)hideLoading:(UIViewController * _Nullable)viewController;

@end

NS_ASSUME_NONNULL_END
