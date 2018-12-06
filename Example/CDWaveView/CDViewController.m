//
//  CDViewController.m
//  CDWaveView
//
//  Created by 513433750@qq.com on 12/06/2018.
//  Copyright (c) 2018 513433750@qq.com. All rights reserved.
//

#import "CDViewController.h"
#import "CDWaveView.h"

@interface CDViewController ()

@end

@implementation CDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CDWaveView *wave1 = [[CDWaveView alloc] initWithFrame:CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, 100)];
    wave1.waveSpeed = 5;
    wave1.waveAmplitude = 50;
    wave1.waveColor =  [UIColor colorWithRed:200.0/255.0 green:200.0/255.0 blue:200.0/255.0 alpha: 0.8];
    [self.view addSubview: wave1];
    
    CDWaveView *wave2 = [[CDWaveView alloc] initWithFrame:CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, 100)];
    wave2.waveSpeed = 10;
    wave2.waveAmplitude = 50;
    wave2.waveColor =  [UIColor colorWithRed:200.0/255.0 green:200.0/255.0 blue:200.0/255.0 alpha: 0.5];
    [self.view addSubview: wave2];
    
    [wave1 wave];
    [wave2 wave];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
