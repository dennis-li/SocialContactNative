//
//  SCNativeCommunication.m
//  Masonry
//
//  Created by lixu on 2017/10/14.
//

#import "SCNativeCommunication.h"
#import "SCRootViewController.h"
#import "DeleteMeViewController.h"
#import "SCNativeHelper.h"

@implementation SCNativeCommunication

RCT_EXPORT_MODULE();


RCT_EXPORT_METHOD(route:(NSData *) parameter success:(RCTResponseSenderBlock)success failure:(RCTResponseSenderBlock) failure)
{
    UIViewController *rootVC = [SCNativeHelper sharedInstance].rootVC;
    
    DeleteMeViewController *presentVC = [DeleteMeViewController new];
    [rootVC presentViewController:presentVC animated:YES completion:^{
        
    }];
    
}

@end
