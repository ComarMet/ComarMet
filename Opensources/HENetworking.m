//
//  HENetworking.m
//  rrslj
//
//  Created by MGN on 16/6/23.
//  Copyright © 2016年 ChengDawei. All rights reserved.
//

#import "HENetworking.h"
#import "AFNetworking.h"

@implementation HENetworking


#pragma mark--GET 网络请求
+ (void)Get_WithHostName:(NSString *)hostName
                 pathName:(NSString *)url
                   params:(NSDictionary *)params
                  success:(void(^)(id jsonObj))success
                  failure:(void(^)(NSError * error))failure
{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.timeoutInterval = 20.f;
    manager.requestSerializer.cachePolicy = NSURLRequestReloadIgnoringLocalAndRemoteCacheData;
    
    if ([url rangeOfString:@"http://"].location == NSNotFound) {
        url = [NSString stringWithFormat:@"http://%@%@",hostName, url];
    } else {
        url = [NSString stringWithFormat:@"%@%@", hostName, url];
    }
    
    [manager GET:url parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {

        if (success) {
            success(responseObject);
        }

    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}

#pragma mark--POST 网络请求
+ (void)POST_WithHostName:(NSString *)hostName
                 pathName:(NSString *)url
                 params:(NSDictionary *)params
                 success:(void(^)(id jsonObj))success
                 failure:(void(^)(NSError * error))failure
{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.timeoutInterval = 20.f;
    manager.requestSerializer.cachePolicy = NSURLRequestReloadIgnoringLocalAndRemoteCacheData;
    
    if ([url rangeOfString:@"http://"].location == NSNotFound) {
        url = [NSString stringWithFormat:@"http://%@%@",hostName, url];
    } else {
        url = [NSString stringWithFormat:@"%@%@", hostName, url];
    }
    
    [manager POST:url parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
        if (success) {
            success(responseObject);
        }

    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (failure) {
            failure(error);
        }

    }];
}

#pragma mark-POST 上传头像
+ (void)Get_DataHostName:(NSString *)hostName
                pathName:(NSString *)url
                  params:(NSDictionary *)params
                 success:(void(^)(id jsonObj))success
                 failure:(void(^)(NSError * error))failure
{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.requestSerializer.timeoutInterval = 20.f;
    manager.requestSerializer.cachePolicy = NSURLRequestReloadIgnoringLocalAndRemoteCacheData;
    
    if ([url rangeOfString:@"http://"].location == NSNotFound) {
        url = [NSString stringWithFormat:@"http://%@%@",hostName, url];
    } else {
        url = [NSString stringWithFormat:@"%@%@", hostName, url];
    }
    
    [manager GET:url parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
        
        if (success) {
            success(responseObject);
        }
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}

#pragma mark--上传用户头像
+ (void)Post_ImageHostName:(NSString *)hostName
                pathName:(NSString *)url
                  params:(NSDictionary *)params
                 imageData:(NSData *)imageData
                 imageName:(NSString *)imageName
                 success:(void(^)(id jsonObj))success
                 failure:(void(^)(NSError * error))failure
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.timeoutInterval = 20.f;
    manager.requestSerializer.cachePolicy = NSURLRequestReloadIgnoringLocalAndRemoteCacheData;
    
    if ([url rangeOfString:@"http://"].location == NSNotFound) {
        url = [NSString stringWithFormat:@"http://%@%@",hostName, url];
    } else {
        url = [NSString stringWithFormat:@"%@%@", hostName, url];
    }
    
}



//=========================网络状态判断===================
+ (Reachability *)reachabilityManager{
    static dispatch_once_t onceToken;
    static Reachability *manager;
    dispatch_once(&onceToken, ^{
        
        manager = [Reachability reachabilityWithHostName:@"www.baidu.com"];
        
    });
    return manager;
}

+ (BOOL)isReachable {
    
    return [self reachabilityManager].isReachable;
}

+ (BOOL)isReachableWWAN {
    
    return [self reachabilityManager].isReachableViaWWAN;
}

+ (BOOL)isReachableWiFi {
    
    return [self reachabilityManager].isReachableViaWiFi;
}

+ (void)startMonitoring {
    
    [[self reachabilityManager] startNotifier];
}

+ (void)stopMonitoring {
    
    [[self reachabilityManager] stopNotifier];
}


@end
