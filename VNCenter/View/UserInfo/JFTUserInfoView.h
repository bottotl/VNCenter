//
//  UserInfoView.h
//  VNCenter
//
//  Created by syfll on 2018/3/18.
//  Copyright © 2018年 syfll. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JFTAvatarButton;
@interface JFTUserInfoView : UIView
@property (nonatomic, strong) JFTAvatarButton *avatarButton;
@property (nonatomic, copy) NSString *userName;
@end
