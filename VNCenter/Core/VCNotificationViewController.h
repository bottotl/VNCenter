//
//  VCNotificationViewController.h
//  VNCenter
//
//  Created by syfll on 2018/3/18.
//  Copyright © 2018年 syfll. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol VCNotificationProtocol
@optional

/**
 class Name For ViewController notification module

 @return class names
 */
- (NSArray<NSString *> *)viewControllerVNModules;
@end

@interface VCNotificationViewController : UIViewController<VCNotificationProtocol>
@end
