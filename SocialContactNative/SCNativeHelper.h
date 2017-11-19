//
//  SocialContactNativeHelper.h
//  Masonry
//
//  Created by lixu on 2017/10/13.
//

@interface SCNativeHelper : NSObject

@property (nonatomic ,weak) UIViewController *rootVC;

+ (instancetype) sharedInstance;
+ (void) socialContactInitRootVCWithParams:(DLModuleParameter *) params;

@end
