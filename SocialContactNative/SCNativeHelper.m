//
//  SocialContactNativeHelper.m
//  Masonry
//
//  Created by lixu on 2017/10/13.
//

#import "SCNativeHelper.h"
#import "SCRootViewController.h"

@implementation SCNativeHelper

+ (instancetype) sharedInstance
{
    static dispatch_once_t token;
    static SCNativeHelper *helper = nil;
    dispatch_once(&token, ^{
        helper = [[SCNativeHelper alloc] init];
        
    });
    return helper;
}

+ (void) socialContactInitRootVCWithParams:(DLModuleParameter *)params
{
    NSDictionary *originalParams = params.originalParams;
    if (![originalParams isKindOfClass:[NSDictionary class]]) {
        return;
    }
    
    NSDictionary *localParams = params.localParams;
    if (![localParams isKindOfClass:[NSDictionary class]]) {
        return;
    }
    
    NSString *subID = [[originalParams objectForKey:@"subID"] description];
    if (![subID isEqualToString:@"InitRootVC"]) {
        return;
    }
    
    UIWindow *window = localParams[@"parentVC"];
    if (![window isKindOfClass:[UIWindow class]]) {
        return;
    }
    
    SCRootViewController *rootVC = [[SCRootViewController alloc] init];
    window.rootViewController = rootVC;
    [SCNativeHelper sharedInstance].rootVC = rootVC;
    
}

@end
