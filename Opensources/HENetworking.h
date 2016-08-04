//
//  HENetworking.h
//  rrslj
//
//  Created by MGN on 16/6/23.
//  Copyright © 2016年 ChengDawei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HENetworking : NSObject

/**
 *  GET-请求
 *
 *  @param hostName 主机地址
 *  @param url      子目录
 *  @param params   请求参数
 *  @param success  成功block
 *  @param failure  失败block
 */
+ (void)Get_WithHostName:(NSString *)hostName
                pathName:(NSString *)url
                  params:(NSDictionary *)params
                 success:(void(^)(id jsonObj))success
                 failure:(void(^)(NSError * error))failure;



/**
 *  POST-请求
 *
 *  @param hostName 主机地址
 *  @param url      子目录
 *  @param params   请求参数
 *  @param success  成功block
 *  @param failure  失败block
 */
+ (void)POST_WithHostName:(NSString *)hostName
                 pathName:(NSString *)url
                   params:(NSDictionary *)params
                  success:(void(^)(id jsonObj))success
                  failure:(void(^)(NSError * error))failure;


/**
 *  GET_Data-下载二进制
 *
 *  @param hostName 主机地址
 *  @param url      子目录
 *  @param params   请求参数
 *  @param success  成功block
 *  @param failure  失败block
 */
+ (void)Get_DataHostName:(NSString *)hostName
                 pathName:(NSString *)url
                   params:(NSDictionary *)params
                  success:(void(^)(id jsonObj))success
                  failure:(void(^)(NSError * error))failure;


/**
 *  Post_Image-上传头像
 *
 *  @param hostName 主机地址
 *  @param url      子目录
 *  @param params   请求参数
 *  @param hostName 图片data
 *  @param hostName 图片名字
 *  @param success  成功block
 *  @param failure  失败block
 */
+ (void)Post_ImageHostName:(NSString *)hostName
                  pathName:(NSString *)url
                    params:(NSDictionary *)params
                 imageData:(NSData *)imageData
                 imageName:(NSString *)imageName
                   success:(void(^)(id jsonObj))success
                   failure:(void(^)(NSError * error))failure;



@end
