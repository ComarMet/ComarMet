//
//  CollectionViewCell.m
//  ComarMet
//
//  Created by ComarMet on 16/7/19.
//  Copyright © 2016年 ComarMet. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        self.contentView.backgroundColor = [UIColor yellowColor];
        
        UIImageView * headImage = [UIImageView new];
        headImage.image = [UIImage imageNamed:@"分享.jpg"];
        [self.contentView addSubview:headImage];
        
        [headImage mas_makeConstraints:^(MASConstraintMaker *make) {
           
//            make.top.left.bottom.right.offset(10);
            make.top.left.offset(10);
            make.right.bottom.offset(-10);
            
        }];
        
    }
    return self;
}
@end
