//
//  ViewController.m
//  GRPHomeworkThree
//
//  Created by Дмитрий Ванюшкин on 18/05/2019.
//  Copyright © 2019 Dmitry Vanyushkin. All rights reserved.
//

#import "ViewController.h"
#import "MovableCircle.h"

@interface ViewController ()

@property (nonatomic, strong) MovableCircle *movableCirle;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.movableCirle = [[MovableCircle alloc]init:UIColor.redColor frame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:self.movableCirle];
    // Do any additional setup after loading the view.
}


@end
