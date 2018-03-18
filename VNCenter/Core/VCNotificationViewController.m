//
//  VCNotificationViewController.m
//  VNCenter
//
//  Created by syfll on 2018/3/18.
//  Copyright © 2018年 syfll. All rights reserved.
//

#import "VCNotificationViewController.h"
#import "VCNViewModuleProtocol.h"

@interface VCNotificationViewController ()
@property (nonatomic, strong) NSMutableArray<id<VCNViewModuleProtocol>> *vcnViewModules;
@end

@implementation VCNotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([self conformsToProtocol:@protocol(VCNotificationProtocol)]) {
        NSArray<NSString *> *classNames = [self viewControllerVNModules];
        [self setupVCNModules:classNames];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)setupVCNModules:(NSArray <NSString *> *)moduleClasss {
    self.vcnViewModules = @[].mutableCopy;
    [moduleClasss enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        Class cls = NSClassFromString(obj);
        if (!cls) return;
        if (![cls conformsToProtocol:@protocol(VCNViewModuleProtocol)]) return;
        id<VCNViewModuleProtocol> module = (id<VCNViewModuleProtocol>)cls;
        [self.vcnViewModules addObject:module];
    }];
    [self vcn_addObserver];
}

- (void)vcn_addObserver {
    [self.vcnViewModules enumerateObjectsUsingBlock:^(id<VCNViewModuleProtocol>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString *notificaitonName = [obj notificationName];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcn_notificaitonHandler:) name:notificaitonName object:nil];
    }];
}

- (void)vcn_notificaitonHandler:(NSNotification *)notification {
    if (notification.object != self) return;
    [self.vcnViewModules enumerateObjectsUsingBlock:^(id<VCNViewModuleProtocol>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj notificationHandler:notification.userInfo viewController:self];
    }];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
