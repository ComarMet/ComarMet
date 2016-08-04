//
//  PlayVideoView.m
//  ComarMet
//
//  Created by ComarMet on 16/7/21.
//  Copyright © 2016年 ComarMet. All rights reserved.
//

#import "PlayVideoView.h"
#import <AVFoundation/AVFoundation.h>

@interface PlayVideoView (){
    AVPlayer * player;
    AVPlayerItem *item;
}

@end

@implementation PlayVideoView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        [self showUIClick];
    }
    return self;
}
- (void)showUIClick {
    // NSURL *url = [[NSBundle mainBundle]URLForResource:@"视频文件名" withExtension:nil];
    
    //    playerItemWithAsset:通过设备相册里面的内容 创建一个 要播放的对象    我们这里直接选择使用URL读取
    item = [AVPlayerItem playerItemWithURL:[NSURL URLWithString:self.urlStr]];
    
    
    player = [AVPlayer playerWithPlayerItem:item];
    AVPlayerLayer *layer = [AVPlayerLayer playerLayerWithPlayer:player];
    //    layer.frame = self.view.frame;
    layer.frame = CGRectMake(0, 64, 320, 150);
    [self.layer addSublayer:layer];
    
    
    [player play];
    NSLog(@"获得视频总时长  %f",CMTimeGetSeconds(player.currentItem.duration));//CMTime在下面会介绍
 

}



@end
