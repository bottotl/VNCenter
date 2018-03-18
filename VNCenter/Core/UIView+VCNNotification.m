//
//  UIView+VCNNotification.m
//  VNCenter
//
//  Created by syfll on 2018/3/18.
//  Copyright © 2018年 syfll. All rights reserved.
//

#import "UIView+VCNNotification.h"

@implementation UIView (VCNNotification)

- (BOOL)postNotification:(NSString *)notificationName userInfo:(NSDictionary *)userInfo {
    UIViewController *vc = [self jft_nearestViewController];
    if (!vc) return NO;
    [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:vc userInfo:userInfo];
    return YES;
}

- (UIViewController *)jft_nearestViewController {
    UIResponder *responder = self;
    while (![responder isKindOfClass:[UIViewController class]]) {
        responder = responder.nextResponder;
    }
    if ([responder isKindOfClass:[UIViewController class]]) {
        return (UIViewController *)responder;
    }
    return nil;
}

@end
