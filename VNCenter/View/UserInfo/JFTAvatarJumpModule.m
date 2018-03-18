//
//  JFTAvatarJumpModule.m
//  VNCenter
//
//  Created by syfll on 2018/3/18.
//  Copyright © 2018年 syfll. All rights reserved.
//

#import "JFTAvatarJumpModule.h"
NSString *const kJFTAvatarJumpNotificaitonName = @"JFTAvatarJumpNotificaitonName";

@implementation JFTAvatarJumpModule

+ (NSString *)notificationName {
    return kJFTAvatarJumpNotificaitonName;
}

+ (void)notificationHandler:(NSDictionary *)userInfo viewController:(UIViewController *)viewController {
    if ([userInfo[@"userName"] isEqualToString:@"用户名"]) {
        NSLog(@"跳转");
    } else {
        NSLog(@"显示图片");
    }
}
@end
