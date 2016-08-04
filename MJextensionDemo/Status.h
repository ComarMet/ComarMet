//
//  Status.h
//  ComarMet
//
//  Created by ComarMet on 16/7/19.
//  Copyright © 2016年 ComarMet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Status : NSObject

@property (copy, nonatomic) NSString *text;
@property (strong, nonatomic) User *user;
@property (strong, nonatomic) Status *retweetedStatus;

@end
