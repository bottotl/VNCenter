//
//  UIView+VCNNotification.h
//  VNCenter
//
//  Created by syfll on 2018/3/18.
//  Copyright © 2018年 syfll. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (VCNNotification)
- (BOOL)postNotification:(NSString *)notificationName userInfo:(NSDictionary *)userInfo;
@end
