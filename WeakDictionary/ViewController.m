//
//  ViewController.m
//  WeakDictionary
//
//  Created by Subo on 16/5/6.
//  Copyright © 2016年 Followme. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIButton *button;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 100, 32)];
    [self.button setTitle:@"Button" forState:UIControlStateNormal];
    [self.button setBackgroundColor:[UIColor redColor]];
    self.button.titleLabel.font = [UIFont systemFontOfSize:19];
    
    [self.button addTarget:self action:@selector(touchButton:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)touchButton:(UIButton *)button {
    NSLog(@"touchButton");
}

@end
