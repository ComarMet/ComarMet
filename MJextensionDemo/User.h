//
//  User.h
//  ComarMet
//
//  Created by ComarMet on 16/7/19.
//  Copyright © 2016年 ComarMet. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    SexMale,
    SexFemale
    
} Sex;

@interface User : NSObject

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *icon;
@property (assign, nonatomic) unsigned int age;
@property (copy, nonatomic) NSString *height;
@property (strong, nonatomic) NSNumber *money;
@property (assign, nonatomic) Sex sex;
@property (assign, nonatomic, getter=isGay) BOOL gay;

@property (nonatomic,strong)NSString * name1;

@end
