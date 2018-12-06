//
//  CDWaveView.h
//  CDProgramme
//
//  Created by 吴文海 on 2018/8/29.
//  Copyright © 2018年 ChangDao. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface CDWaveView : UIView

/**
 *  The speed of wave 波浪的填充颜色
 */

@property (nonatomic, strong) UIColor *waveColor;

/**
 *  The speed of wave 波浪的快慢
 */
@property (nonatomic,assign)CGFloat waveSpeed;

/**
 *  The amplitude of wave 波浪的震荡幅度
 */
@property (nonatomic,assign)CGFloat waveAmplitude;

/**
 *  Start waving
 */

- (void)wave;

/**
 *  Stop waving
 */
- (void)stop;
@end
