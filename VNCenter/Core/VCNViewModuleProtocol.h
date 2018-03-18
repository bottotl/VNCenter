//
//  VCNViewModuleProtocol.h
//  VNCenter
//
//  Created by syfll on 2018/3/18.
//  Copyright © 2018年 syfll. All rights reserved.
//

#ifndef VCNViewModuleProtocol_h
#define VCNViewModuleProtocol_h

#import <UIKit/UIKit.h>
@protocol VCNViewModuleProtocol
+ (NSString *)notificationName;
+ (void)notificationHandler:(NSDictionary *)userInfo viewController:(UIViewController *)viewController;
@end

#endif /* VCNViewModuleProtocol_h */
