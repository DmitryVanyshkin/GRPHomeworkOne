//
//  MovableCircle.m
//  GRPHomeworkThree
//
//  Created by Дмитрий Ванюшкин on 18/05/2019.
//  Copyright © 2019 Dmitry Vanyushkin. All rights reserved.
//

#import "MovableCircle.h"

@interface MovableCircle ()

@property CGFloat xDeviation;
@property CGFloat yDeviation;

@end

@implementation MovableCircle


-(instancetype)init:(UIColor *)color frame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        [self setCircleColor:color];
        [self setBackgroundColor: self.circleColor];
        [self.layer setCornerRadius:frame.size.width / 2];
    }
    
    return self;
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *currentTouch = touches.anyObject;
    CGPoint coordinatesInTouch = [currentTouch locationInView: self.superview];
    [self countDeviationFromCenter: self.center ourPoint:coordinatesInTouch];
    
}

-(void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *currentTouch = touches.anyObject;
    CGPoint coordinatesInTouch = [currentTouch locationInView: self.superview];

    CGPoint correctedCoordinateCenter = CGPointMake(coordinatesInTouch.x - [self xDeviation],coordinatesInTouch.y - [self yDeviation]);

    self.center = correctedCoordinateCenter;

}

-(void) countDeviationFromCenter:(CGPoint)centerPoint ourPoint:(CGPoint)point
{
    
    [self setXDeviation:point.x - centerPoint.x];
    [self setYDeviation:point.y - centerPoint.y];
    
}

@end
