//
//  ViewController.m
//  VideoDemo
//
//  Created by HeKe on 14/11/26.
//  Copyright (c) 2014年 smileshitou@hotmail.com. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (id)init{
    self = [super init];
    if (self) {

    }
    return self;
}

- (void)loadView{
    [super loadView];

    [self initUI];
}

- (void)initUI{
    self.view.backgroundColor = [UIColor whiteColor];

//    NSURL *url = [NSURL URLWithString:@"http://115.231.152.26/vhot2.qqvideo.tc.qq.com/n0131xnplg7.mp4?vkey=B8316DFA825CB22A9FF1362A0658298FD825C30BA79EDCF8C7A4943BB96E1DD400538B6A3DD972F1CCF2BCE9E8D36636B566F91D10897D8D&br=62362&platform=0&fmt=mp4&level=0&type=mp4&locid=6011e851-f495-4c22-bdf0-a9ddc2df5940&size=16663639&ocid=267329452"];

    NSURL *url = [NSURL URLWithString:@"http://www.tudou.com/v/dRmlZQXEsPE/&resourceId=0_04_05_99/v.swf?iid=187547445"];//[NSURL URLWithString:@"http://m.jxedt.com/api/vedio/jxedt.com?iid=10001"];

    AVPlayer *player = [AVPlayer playerWithURL:url];

    AVPlayerLayer *videoLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    videoLayer.frame = CGRectMake(0, 0, 320, 240);
    [self.view.layer addSublayer:videoLayer];
    [player play];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
