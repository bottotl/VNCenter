//
//  ViewController.m
//  VNCenter
//
//  Created by syfll on 2018/3/18.
//  Copyright © 2018年 syfll. All rights reserved.
//

#import "ViewController.h"
#import "JFTUserInfoView.h"
#import "JFTUserInfoView+Config.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSArray<NSString *> *)viewControllerVNModules {
    return @[@"JFTAvatarJumpModule"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    JFTUserInfoView *aView = [[JFTUserInfoView alloc] initWithFrame:CGRectMake(30, 100, 100, 50)];
    [aView customConfig];
    [self.view addSubview:aView];
    
    JFTUserInfoView *bView = [[JFTUserInfoView alloc] initWithFrame:CGRectMake(30, 200, 100, 50)];
    bView.userName = @"abc";
    [bView customConfig];
    [self.view addSubview:bView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
