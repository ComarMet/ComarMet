//
//  MasonryVC.m
//  ComarMet
//
//  Created by ComarMet on 16/7/18.
//  Copyright © 2016年 ComarMet. All rights reserved.
//

#import "MasonryVC.h"
#import "MasonryCell.h"
@interface MasonryVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UIView * View1;
@property (nonatomic,strong)UIView * View2;
@property (nonatomic,strong)UILabel * lable1;
@property (nonatomic,strong)UILabel * lable2;
@property (nonatomic,strong)UITableView * talbeview;
@property (nonatomic,strong)NSArray * array;

@end

@implementation MasonryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Masonry";
    ///^//
    //fdsafjldksajl
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.View1];

//    [self.view addSubview:self.lable1];
    [self.View1 addSubview:self.lable1];
    [self.View1  addSubview:self.lable2];
//    [self.view addSubview:self.View2];
    [self view1Mas];
//    [self.view addSubview:self.talbeview];

    
}

#pragma mark -tableviewcellheight - 
- (UITableView *)talbeview {
    if (!_talbeview) {
        _talbeview = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
        [_talbeview registerClass:[MasonryCell class] forCellReuseIdentifier:@"ID"];
        _talbeview.delegate = self;
        _talbeview.dataSource = self;
        
    }
    return _talbeview;
}
- (NSArray *)array{
    if (!_array) {
        _array = @[@"asjdj",@"afkjdslfjkalsfj",@"asjfasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjasjfkjaslkfjdsaklfjkjaslkfjdsaklfj"];
    }
    return _array;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  
    return [tableView fd_heightForCellWithIdentifier:@"ID" cacheByIndexPath:indexPath configuration:^(MasonryCell * cell) {
       
        cell.titleLb.text = self.array[indexPath.row];
    }];
   
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MasonryCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ID"];
    cell.titleLb.text = self.array[indexPath.row];
    return cell;
}
#pragma mark - uiview-
- (UIView *)View1 {
    if (!_View1) {
        _View1 = [UIView new];
        _View1.backgroundColor = [UIColor blueColor];
        
    }
    return _View1;
}
- (UILabel *)lable1 {
    if (!_lable1) {
        _lable1 = [UILabel new];
        _lable1.backgroundColor = [UIColor yellowColor];
        _lable1.text = @"asfjdlfklasjasfjdlfklasjfldsajfoiasasfjdlfklasjfldsajfoiasasfjdlfklasjfldsajfoiasasfjdlfklasjfldsajfoiasasfjdlfklasjfldsajfoiasfldsajfoias";
        _lable1.numberOfLines = 0;
        _lable1.textColor = [UIColor blueColor];
    }
    return _lable1;
}
- (UILabel *)lable2 {
    if (!_lable2) {
        _lable2 = [UILabel new];
        _lable2.backgroundColor = [UIColor yellowColor];
        _lable2.text = @"asfjdlfklasjfldsajfoias";
        _lable2.numberOfLines = 0;
        _lable2.textColor = [UIColor blueColor];
    }
    return _lable2;
}


- (UIView *)View2 {
    if (!_View2) {
        _View2 = [UIView new];
        _View2.backgroundColor = [UIColor blueColor];
        
    }
    return _View2;
}
- (void)view1Mas{
    [self.View1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(20);
//        make.height.offset(300);
        make.top.offset(84);
        make.right.offset(-20);


    }];
    

    [self.lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(200);
        
        make.top.offset(10);
        make.right.offset(-20);

    }];
//
   
    [self.lable2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.View1.mas_centerY);
//        make.top.mas_equalTo(100);
        make.left.mas_equalTo(10);
//        make.width.mas_equalTo(100);
//        make.right.mas_equalTo(self.lable1.mas_left).offset(-20);
        
    }];

//
    [self.View1 mas_updateConstraints:^(MASConstraintMaker *make) {
        
        make.bottom.equalTo(self.lable1.mas_bottom).offset(10);
//
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
