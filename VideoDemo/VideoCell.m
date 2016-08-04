//
//  VideoCell.m
//  ComarMet
//
//  Created by ComarMet on 16/7/21.
//  Copyright © 2016年 ComarMet. All rights reserved.
//

#import "VideoCell.h"

@implementation VideoCell


- (void)awakeFromNib {
    // Initialization code
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
       
        
      
        [self.contentView addSubview:self.title];
        
        
        [self.contentView addSubview:self.headImageView];
        [self masonryClick];
        
        
    }
    return self;
    
}
-(UILabel *)title{
    if (!_title) {
        _title = [UILabel new];
        _title.backgroundColor = [UIColor yellowColor];
        _title.numberOfLines = 0;
    }
    return _title;
}
- (UIImageView *)headImageView {
    if (!_headImageView) {
        _headImageView = [[UIImageView alloc]init];
        _headImageView.image = [UIImage imageNamed:@"分享.jpg"];
        
        
    }
    return _headImageView;
}

- (void)masonryClick {
    [self.title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(10);
        make.left.offset(10);
        make.right.offset(-10);

    }];
       [self.headImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.title.mas_bottom).offset(10);
        make.left.offset(10);
        make.right.offset(-10);
           make.height.offset(100*WIDHT/320);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-10);
        
    }];
    

}
- (void)showdata:(VideoModel *)model{
    self.title.text = model.title;
    [self.headImageView sd_setImageWithURL:[NSURL URLWithString:model.cover] placeholderImage:nil];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
