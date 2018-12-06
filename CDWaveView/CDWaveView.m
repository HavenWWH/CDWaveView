//
//  CDWaveView.m
//  CDProgramme
//
//  Created by 吴文海 on 2018/12/4.
//  Copyright © 2018 ChangDao. All rights reserved.
//

#import "CDWaveView.h"

#define  WaveNum 120  // 设置波峰的个数 90 120 180 360

@interface CDWaveView  () {
    CGFloat waterWaveWidth;
    CGFloat waterWaveHeight;
    
    CGFloat offsetX;
    
    CADisplayLink *waveDisplaylink;
    CAShapeLayer  *waveLayer;
    UIBezierPath *waveBoundaryPath;
}

@end

@implementation CDWaveView
- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor clearColor];
        
        waterWaveWidth = frame.size.width;
        waterWaveHeight = frame.size.height;;
    }
    return self;
}


- (void)wave {
    
    waveBoundaryPath = [UIBezierPath bezierPath];
    if (waveLayer) {
        [waveLayer removeFromSuperlayer];
    }
    waveLayer = [CAShapeLayer layer];
    waveLayer.fillColor = self.waveColor.CGColor;
    [self.layer addSublayer:waveLayer];
    waveDisplaylink = [CADisplayLink displayLinkWithTarget:self selector:@selector(getCurrentWave:)];
    [waveDisplaylink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
}

- (void)stop {
    
    [waveDisplaylink invalidate];
    waveDisplaylink = nil;
}



- (void)getCurrentWave:(CADisplayLink *)displayLink {
    
    offsetX += self.waveSpeed;
    waveBoundaryPath = [self getgetCurrentWavePath];
    waveLayer.path = waveBoundaryPath.CGPath;
}

- (UIBezierPath *)getgetCurrentWavePath {
    
    UIBezierPath *p = [UIBezierPath bezierPath];
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, nil, 0, waterWaveHeight);
    CGFloat y = 0.0f;
    for (float x = 0.0f; x <=  waterWaveWidth ; x++) {
        //调整波浪的形状
        y = self.waveAmplitude * sinf((360 / waterWaveWidth) *(x * M_PI / WaveNum) - offsetX * M_PI / WaveNum) + waterWaveHeight * 0.5;
        CGPathAddLineToPoint(path, nil, x, y);
    }
    
    CGPathAddLineToPoint(path, nil, waterWaveWidth, self.frame.size.height);
    CGPathAddLineToPoint(path, nil, 0, self.frame.size.height);
    CGPathCloseSubpath(path);
    
    p.CGPath = path;
    CGPathRelease(path);
    return p;
}


- (void)setWaveColor:(UIColor *)waveColor {
    
    _waveColor = waveColor;
}

@end
