//
//  SCRootViewController.m
//  SocialContact
//
//  Created by iqiyi on 17/10/12.
//  Copyright © 2017年 iqiyi. All rights reserved.
//

#import "SCRootViewController.h"
#import "RCTRootView.h"

@interface SCRootViewController ()

@end

@implementation SCRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *jsCodeLocation = [NSURL
                             URLWithString:@"http://127.0.0.1:8081/index.ios.bundle?platform=ios"];
    
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : @"RNApp"
                         initialProperties :
     @{
       @"title" : @"购买会员",
       @"subTitle":@"购买一个月",
       @"from":@"商城"
       }
                          launchOptions    : nil];
    
    self.view = rootView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
