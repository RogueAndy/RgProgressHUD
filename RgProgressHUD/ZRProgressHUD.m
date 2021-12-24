//
//  ZRProgressHUD.m
//  ZRProgressHUDDemo
//
//  Created by rogue on 2019/1/7.
//  Copyright © 2019 rogue. All rights reserved.
//

#import "ZRProgressHUD.h"

static NSInteger x_hud_viewController_tag_value = 199343;
static NSInteger x_hud_window_tag_value = 199344;
static NSInteger x_max_hud_showTime = 20;

@implementation ZRProgressHUD

+ (void)showLoading:(UIViewController * _Nullable)viewController {
    [self showLoadingComplete:viewController hideComplete:nil];
}

+ (void)showLoadingComplete:(UIViewController * _Nullable)viewController hideComplete:(nullable void (^)(void))hideComplete {
    if(!viewController) {
        return;
    }
    dispatch_async(dispatch_get_main_queue(), ^{
        MBProgressHUD *hud = [viewController.view viewWithTag:x_hud_viewController_tag_value];
        if(!hud) {
            hud = [MBProgressHUD showHUDAddedTo:viewController.view animated:YES];
            hud.tag = x_hud_viewController_tag_value;
        }
        hud.completionBlock = hideComplete;
    });
}

+ (void)showTips:(UIViewController * _Nullable)viewController tip:(NSString * _Nullable)tip delay:(float)delay {
    [self showTipsComplete:viewController tip:tip delay:delay hideComplete:nil];
}

+ (void)showTipsComplete:(UIViewController * _Nullable)viewController tip:(NSString * _Nullable)tip delay:(float)delay hideComplete:(nullable void (^)(void))hideComplete {
    if(!viewController) {
        return;
    }
    tip = tip ? tip : @"";
    dispatch_async(dispatch_get_main_queue(), ^{
        MBProgressHUD *hud = [viewController.view viewWithTag:x_hud_viewController_tag_value];
        if(!hud) {
            hud = [MBProgressHUD showHUDAddedTo:viewController.view animated:true];
            hud.tag = x_hud_viewController_tag_value;
            [hud showAnimated:true];
        }
        hud.completionBlock = hideComplete;
        hud.mode = MBProgressHUDModeText;
        hud.label.numberOfLines = 0;
        hud.label.lineBreakMode = NSLineBreakByWordWrapping;
        hud.label.text = tip;
        [hud hideAnimated:true afterDelay:delay];
    });
}

+ (void)showMessageOnWindow:(NSString * _Nullable)tip delay:(float)delay {
    [self showMessageOnWindowComplete:tip delay:delay hideComplete:nil];
}

+ (void)showMessageOnWindowComplete:(NSString * _Nullable)tip delay:(float)delay hideComplete:(nullable void (^)(void))hideComplete {
    tip = tip ? tip : @"";
    dispatch_async(dispatch_get_main_queue(), ^{
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        if (!window) {
            window = [[UIApplication sharedApplication].windows objectAtIndex:0];
        }
        MBProgressHUD *hud = [window viewWithTag:x_hud_window_tag_value];
        if(!hud) {
            hud = [MBProgressHUD showHUDAddedTo:window animated:true];
            hud.tag = x_hud_window_tag_value;
            [hud showAnimated:true];
        }
        hud.completionBlock = hideComplete;
        hud.mode = MBProgressHUDModeText;
        hud.label.numberOfLines = 0;
        hud.label.lineBreakMode = NSLineBreakByWordWrapping;
        hud.label.text = tip;
        [hud hideAnimated:true afterDelay:delay];
    });
}

+ (void)hideLoading:(UIViewController * _Nullable)viewController {
    if(!viewController) {
        return;
    }
    dispatch_async(dispatch_get_main_queue(), ^{
        MBProgressHUD *hud = [viewController.view viewWithTag:x_hud_viewController_tag_value];
        if(hud) {
            [hud hideAnimated:false];
        }
    });
}

@end
