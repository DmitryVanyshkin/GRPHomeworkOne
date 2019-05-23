//
//  MovableCircle.h
//  GRPHomeworkThree
//
//  Created by Дмитрий Ванюшкин on 18/05/2019.
//  Copyright © 2019 Dmitry Vanyushkin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MovableCircle : UIView

@property (nonatomic, strong) UIColor *circleColor;
-(instancetype) init:(UIColor*)color frame:(CGRect) frame;

@end

NS_ASSUME_NONNULL_END
