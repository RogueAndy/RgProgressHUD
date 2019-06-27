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

+ (void)showLoading:(UIViewController *)viewController;

+ (void)showLoadingComplete:(UIViewController *)viewController hideComplete:(nullable void (^)(void))hideComplete;

+ (void)showTips:(UIViewController *)viewController tip:(NSString *)tip delay:(float)delay;

+ (void)showTipsComplete:(UIViewController *)viewController tip:(NSString *)tip delay:(float)delay hideComplete:(nullable void (^)(void))hideComplete;

+ (void)showMessageOnWindow:(NSString *)tip delay:(float)delay;

+ (void)showMessageOnWindowComplete:(NSString *)tip delay:(float)delay hideComplete:(nullable void (^)(void))hideComplete;

+ (void)hideLoading:(UIViewController *)viewController;

@end

NS_ASSUME_NONNULL_END
