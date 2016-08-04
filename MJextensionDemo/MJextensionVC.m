//
//  MJextensionVC.m
//  ComarMet
//
//  Created by ComarMet on 16/7/19.
//  Copyright © 2016年 ComarMet. All rights reserved.
//

#import "MJextensionVC.h"
#import <MJExtension.h>
#import "User.h"
#import "Status.h"

@interface MJextensionVC ()

@end

@implementation MJextensionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSDictionary *dict = @{
                           @"name" : @"Jack",
                           @"icon" : @"lufy.png",
                           @"age" : @20,
                           @"height" : @"1.55",
                           @"money" : @100.9,
                           @"sex" : @"SexFemale",
                           @"gay" : @"true"
                           //   @"gay" : @"1"
                           //   @"gay" : @"NO"
                           };
    User * user = [User mj_objectWithKeyValues:dict];
    
    
    
    NSLog(@"name=%@, icon=%@, age=%zd, height=%@, money=%@, sex=%d, gay=%d", user.name1, user.icon, user.age, user.height, user.money, user.sex, user.gay);

    
//    NSDictionary *dict = @{
//                           @"text" : @"Agree!Nice weather!",
//                           @"user" : @{
//                                   @"name" : @"Jack",
//                                   @"icon" : @"lufy.png"
//                                   },
//                           @"retweetedStatus" : @{
//                                   @"text" : @"Nice weather!",
//                                   @"user" : @{
//                                           @"name" : @"Rose",
//                                           @"icon" : @"nami.png"
//                                           }
//                                   }
//                           };
//    Status *status = [Status mj_objectWithKeyValues:dict];
//    NSString *text = status.text;
//    NSString *name = status.user.name;
//    NSString *icon = status.user.icon;
//    NSLog(@"text=%@, name=%@, icon=%@", text, name, icon);
//    
//    NSString *text2 = status.retweetedStatus.text;
//    NSString *name2 = status.retweetedStatus.user.name;
//    NSString *icon2 = status.retweetedStatus.user.icon;
//    NSLog(@"text2=%@, name2=%@, icon2=%@", text2, name2, icon2);
    
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
