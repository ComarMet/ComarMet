//
//  MasonryCell.m
//  ComarMet
//
//  Created by ComarMet on 16/7/19.
//  Copyright © 2016年 ComarMet. All rights reserved.
//

#import "MasonryCell.h"

@implementation MasonryCell

- (void)awakeFromNib {
    // Initialization code
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _headImageView = [UIImageView new];
        _headImageView.image = [UIImage imageNamed:@"分享.jpg"];
        
        [self.contentView addSubview:_headImageView];
        
        _titleLb   = [UILabel new];
        _titleLb.backgroundColor = [UIColor yellowColor];
        _titleLb.numberOfLines = 0;
//        _titleLb.text = @"fjakslfjksadljfsdkfjsadfjakslfjksadljfsdkfjsadfjakslfjksadljfsdkfjsadfjakslfjksadljfsdkfjsadfjakslfjksadljfsdkfjsadfjakslfjksadljfsdkfjsad";
        
        [self.contentView addSubview:_titleLb];
        
        _contentLb = [UILabel new];
        
        [self.contentView addSubview:_contentLb];
        
        [_headImageView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.offset(10);
            make.left.offset(10);
            make.width.offset(50);
            make.height.offset(50);
            
        }];
        [_titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(10);
            make.left.equalTo(_headImageView.mas_right).offset(10);
            make.right.offset(-10);
            make.bottom.offset(-10);
            
            
        }];
       
        
    }
    return self;
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
