//
//  PlayVideoVC.m
//  ComarMet
//
//  Created by ComarMet on 16/7/21.
//  Copyright © 2016年 ComarMet. All rights reserved.
//

#import "PlayVideoVC.h"
#import "PlayVideoView.h"


@interface PlayVideoVC ()

@end

@implementation PlayVideoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
    PlayVideoView * View1 = [[PlayVideoView alloc]initWithFrame:CGRectMake(0, 0, 320, 200)];
    View1.urlStr = _urlStr;
    [self.view addSubview:View1];
    
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
