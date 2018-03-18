//
//  UserInfoView.m
//  VNCenter
//
//  Created by syfll on 2018/3/18.
//  Copyright © 2018年 syfll. All rights reserved.
//

#import "JFTUserInfoView.h"
#import "JFTAvatarButton.h"

@interface JFTUserInfoView()
@property (nonatomic, strong) UILabel         *userNameLabel;
@end

@implementation JFTUserInfoView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        _avatarButton = [JFTAvatarButton new];
        [self addSubview:_avatarButton];
        _userNameLabel = [UILabel new];
        _userNameLabel.font = [UIFont systemFontOfSize:14.f];
        _userNameLabel.text = @"用户名";
        [self addSubview:_userNameLabel];
        self.backgroundColor = [UIColor lightGrayColor];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.avatarButton.frame = CGRectMake(0, 0, 50, 50);
    self.userNameLabel.frame = CGRectMake(0, 50, 50, 25);
}

- (void)setUserName:(NSString *)userName {
    _userName = userName;
    self.userNameLabel.text = _userName;
}

@end
