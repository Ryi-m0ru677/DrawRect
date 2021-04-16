//
//  CustomView.m
//  DrawRect
//
//  Created by cocoazxj@163.com on 15/4/16.
//  Copyright (c) 2015年 handcool. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef cr = UIGraphicsGetCurrentContext();
//    [self drawLine:rect contextRef:cr];
//    CGContextSaveGState(cr);
//    [self drawCircle:rect contextRef:cr];
//    CGContextRestoreGState(cr);
//    CGContextSaveGState(cr);
//    [self drawBezier:rect contextRef:cr];
//    CGContextRestoreGState(cr);
//    [self drawTriangle:rect contextRef:cr];
    [self drawRectangle:rect contextRef:cr];
    
    // 把图片切成圆形
//    [self clipIcon:@"80"contextRef:cr];
    
    // 绘制扇形
//    [self drawSector:rect contextRef:cr];
    
    
}

// 贝塞尔曲线
- (void)drawBezier:(CGRect)rect contextRef:(CGContextRef)contextRef
{
    CGContextMoveToPoint(contextRef, 40, 80);
    CGContextAddQuadCurveToPoint(contextRef, 60, 60, 80, 80);
    CGContextStrokePath(contextRef);
}

// 绘制扇形
- (void)drawSector:(CGRect)rect contextRef:(CGContextRef)contextRef
{
    CGContextMoveToPoint(contextRef, 100, 20);
    CGContextAddLineToPoint(contextRef, 100, 100);
    CGContextAddArc(contextRef, 100, 20, 80, M_PI_2, M_PI, 0);
    CGContextClosePath(contextRef);
    [[UIColor redColor] set];
    CGContextFillPath(contextRef);
//    CGContextStrokePath(contextRef);
    
}

// 绘制圆形
- (void)drawCircle:(CGRect)rect contextRef:(CGContextRef)contextRef
{
    CGContextAddEllipseInRect(contextRef, CGRectMake(10, 10, 30, 30));
    CGContextSetLineWidth(contextRef, 3);
    [[UIColor blueColor] set];
    CGContextStrokePath(contextRef);
}

// 绘制线条
- (void)drawLine:(CGRect)rect contextRef:(CGContextRef)contextRef
{
    
    CGContextSetLineWidth(contextRef, 5);
    CGContextMoveToPoint(contextRef, 10, 10);
    CGContextAddLineToPoint(contextRef, 100, 10);
    [[UIColor redColor] setStroke];
    CGContextStrokePath(contextRef);
    
    CGContextMoveToPoint(contextRef, 20, 20);
    CGContextAddLineToPoint(contextRef, 80, 20);
    [[UIColor blueColor] setStroke];
    CGContextStrokePath(contextRef);
    
}

// 绘制三角形
- (void)drawTriangle:(CGRect)rect contextRef:(CGContextRef)contextRef
{
    CGContextMoveToPoint(contextRef, 100, 10);
    CGContextAddLineToPoint(contextRef, 0, 100);
    CGContextAddLineToPoint(contextRef, 200, 100);
    CGContextClosePath(contextRef);
    CGContextSetLineWidth(contextRef, 3);
    [[UIColor redColor] set];
    CGContextStrokePath(contextRef);
//    CGContextFillPath(cr);
}

// 绘制矩形
- (void)drawRectangle:(CGRect)rect contextRef:(CGContextRef)contextRef
{
    CGContextRotateCTM(contextRef, M_PI_4);
    CGContextAddRect(contextRef, CGRectMake(0, 0, 60, 60));
    CGContextStrokePath(contextRef);
}

// 剪切头像
- (void)clipIcon:(NSString *)image contextRef:(CGContextRef)contextRef
{
    CGContextAddEllipseInRect(contextRef, CGRectMake(100,100, 40, 40));
    CGContextSetLineWidth(contextRef, 3);
    [[UIColor blueColor] set];
    CGContextClip(contextRef);
    CGContextStrokePath(contextRef);
    UIImage *img = [UIImage imageNamed:image];
    [img drawInRect:CGRectMake(100,100, 40, 40)];
}

// 小黄人制作
- (void)drawYellowPeople:(CGRect)rect contextRef:(CGContextRef)contextRef
{
    
}
@end
