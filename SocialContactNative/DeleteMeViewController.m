//
//  DeleteMeViewController.m
//  SocialContact
//
//  Created by lixu on 2017/10/15.
//  Copyright © 2017年 iqiyi. All rights reserved.
//

#import "DeleteMeViewController.h"
#import "SCRootViewController.h"

@interface DeleteMeViewController ()

@end

@implementation DeleteMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton new];
    btn.frame = CGRectMake(100, 300, 100, 30);
    [btn setTitle:@"定位" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor orangeColor];
    
    [btn addTarget:self action:@selector(location:) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void) location:(id) sender
{
    SCRootViewController *vc = [SCRootViewController new];
    
    [self presentViewController:vc animated:YES completion:^{
        
    }];
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
