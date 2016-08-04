//
//  ViewController.m
//  ComarMet
//
//  Created by ComarMet on 16/7/18.
//  Copyright © 2016年 ComarMet. All rights reserved.
//

#import "ViewController.h"
#import "MasonryVC.h"
#import "MJextensionVC.h"
#import "UICollectionViewVC.h"
#import "VideoVC.h"
#import "ScrollPageView.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong)NSArray * array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"列表";
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];

    UITableView *tableV= [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    tableV.delegate = self;
    tableV.dataSource = self;
    [self.view addSubview:tableV];
    
}
- (NSArray *)array {
    if (!_array) {
        _array = @[@"Masonry",@"MJextension",@"CollectionView",@"Video",@"ZJScrollPageView"];
    }
    return _array;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    UITableViewCell * deq = [tableView dequeueReusableCellWithIdentifier:@"ID"];
    if (!deq) {
        deq = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ID"];
    }
    deq.textLabel.text =self.array[indexPath.row];;
    return deq;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case 0:{
            MasonryVC * mas = [MasonryVC new];
            mas.title = self.array[indexPath.row];
            [self.navigationController pushViewController:mas animated:YES];
        }
            break;
        case 1:{
            MJextensionVC * mas = [MJextensionVC new];
            mas.title = self.array[indexPath.row];

            [self.navigationController pushViewController:mas animated:YES];

        }
            break;
        case 2:{
            UICollectionViewVC * mas = [UICollectionViewVC new];
            mas.title = self.array[indexPath.row];

            [self.navigationController pushViewController:mas animated:YES];
        }
            break;
        case 3:{
            VideoVC * mas = [VideoVC new];
            mas.title = self.array[indexPath.row];
            
            [self.navigationController pushViewController:mas animated:YES];
        }
            
            break;
        case 4:{
            ScrollPageView * mas = [ScrollPageView new];
            mas.title = self.array[indexPath.row];
            
            [self.navigationController pushViewController:mas animated:YES];
        }
            
        default:
            break;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
