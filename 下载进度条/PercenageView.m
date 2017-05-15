//
//  PercenageView.m
//  下载进度条
//
//  Created by Macbook on 2017/5/15.
//  Copyright © 2017年 Macbook. All rights reserved.
//

#import "PercenageView.h"

@implementation PercenageView

- (void)setProgressValue:(CGFloat)progressValue {
    _progressValue = progressValue;
    //注意：drawRect 如果是手动调用，它是不会给我们创建跟view相关联的上下文
    //只有系统调用该方法是，才会创建跟View相关联的上下文
//    [self drawRect:self.bounds];
    //重绘，系统自动帮我们调用drawRect:方法
    [self setNeedsDisplay];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGPoint center = CGPointMake(rect.size.width * 0.5, rect.size.height * 0.5);
    CGFloat radius = rect.size.width * 0.5 - 10;
    CGFloat startAngle = -M_PI_2;
    CGFloat angle = M_PI * 2 * self.progressValue;
    CGFloat endAngle = startAngle + angle;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:YES];
    
    CGContextAddPath(ctx, path.CGPath);
    
    CGContextStrokePath(ctx);
    
    
}




@end
