//
//  SocialContactNative.m
//  SocialContactNative
//
//  Created by lixu on 2017/10/13.
//  Copyright © 2017年 lixu. All rights reserved.
//

#import "SCNative.h"
#import "SCNativeHelper.h"

@implementation SCNative

+ (void) load
{
    [DLModulesManager registerByModuleID:@"SCRoot" className:NSStringFromClass([self class])];
}

+ (void) launchWithParam:(DLModuleParameter *)param
{
    NSDictionary *originalParams = param.originalParams;
    if (![originalParams isKindOfClass:[NSDictionary class]]) {
        return;
    }
    
    NSDictionary *localParams = param.localParams;
    if (![localParams isKindOfClass:[NSDictionary class]]) {
        return;
    }
    
    NSString *subID = [[originalParams objectForKey:@"subID"] description];
    
    if ([subID isEqualToString:@"InitRootVC"]) {
        
        [SCNativeHelper socialContactInitRootVCWithParams:param];
        
    }
}

@end
