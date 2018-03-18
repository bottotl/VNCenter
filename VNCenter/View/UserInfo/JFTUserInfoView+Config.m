//
//  JFTUserInfoView+Config.m
//  VNCenter
//
//  Created by syfll on 2018/3/18.
//  Copyright © 2018年 syfll. All rights reserved.
//

#import "JFTUserInfoView+Config.h"
#import "UIView+VCNNotification.h"
#import "JFTAvatarJumpModule.h"

@implementation JFTUserInfoView (Config)
- (void)customConfig {
    [self.avatarButton addTarget:self action:@selector(avatarButtonClick:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)avatarButtonClick:(UIButton *)btn {
    NSDictionary *userInfo = @{ @"sender" : btn ,
                                @"userName" : self.userName
                                };
    [self postNotification:kJFTAvatarJumpNotificaitonName userInfo:userInfo];
}

@end
