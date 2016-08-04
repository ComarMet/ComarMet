//
//  VideoVC.m
//  ComarMet
//
//  Created by ComarMet on 16/7/21.
//  Copyright © 2016年 ComarMet. All rights reserved.
//

#import "VideoVC.h"
#import "VideoCell.h"
#import "VideoModel.h"
#import "PlayVideoVC.h"

#define IDENTIFERCELL  @"VoidCell"

@interface VideoVC ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong)UITableView * tableview;

@property (nonatomic,strong)NSMutableArray * dataArray;


@end

@implementation VideoVC


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self getRequstdata];
    [self.view addSubview:self.tableview];
    
}

- (UITableView *)tableview {
    if (!_tableview) {
        _tableview = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
        _tableview.delegate = self;
        _tableview.dataSource = self;
        [_tableview registerClass:[VideoCell class] forCellReuseIdentifier:IDENTIFERCELL];
    }
    return _tableview;
}
- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc]initWithCapacity:0];
        
    }
    return _dataArray;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return  [tableView fd_heightForCellWithIdentifier:IDENTIFERCELL cacheByIndexPath:indexPath configuration:^(VideoCell * cell) {
        VideoModel * model = self.dataArray[indexPath.row];
        cell.title.text = model.title;
        
    }];
//    return 50;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    VideoCell * cell = [tableView dequeueReusableCellWithIdentifier:IDENTIFERCELL];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    VideoModel * model = self.dataArray[indexPath.row];
    
    [cell showdata:model];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    VideoModel * model = self.dataArray[indexPath.row];
    PlayVideoVC * playVC = [PlayVideoVC new];
    playVC.title = model.title;
    playVC.urlStr = model.m3u8_url;
    
    [self.navigationController pushViewController:playVC animated:YES];
}

- (void)getRequstdata {
    
    [HENetworking Get_WithHostName:@"c.m.163.com/" pathName:@"nc/video/home/0-10.html" params:nil success:^(id jsonObj) {
        
        
        self.dataArray = [VideoModel mj_objectArrayWithKeyValuesArray:jsonObj[@"videoList"]];
        
        [self.tableview reloadData];
        
    } failure:^(NSError *error) {
        
    }];

    
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
