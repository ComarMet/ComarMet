//
//  VideoCell.h
//  ComarMet
//
//  Created by ComarMet on 16/7/21.
//  Copyright © 2016年 ComarMet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VideoModel.h"

@interface VideoCell : UITableViewCell

@property(nonatomic,strong)UILabel * title;

@property (nonatomic,strong)UIImageView * headImageView;


- (void)showdata:(VideoModel *)model;

@end
