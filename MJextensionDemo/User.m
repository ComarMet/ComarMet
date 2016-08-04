//
//  User.m
//  ComarMet
//
//  Created by ComarMet on 16/7/19.
//  Copyright © 2016年 ComarMet. All rights reserved.
//

#import "User.h"
#import <MJExtension.h>

@implementation User

+(NSDictionary *)mj_replacedKeyFromPropertyName{
    
    return @{@"name1":@"name"};
}

@end
