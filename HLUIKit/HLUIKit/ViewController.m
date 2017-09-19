//
//  ViewController.m
//  HLUIKit
//
//  Created by 王源鸿 on 2017/9/19.
//  Copyright © 2017 王源鸿. All rights reserved.
//

#import "ViewController.h"
#import "HLImageItemCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupUI];
}

- (void)setupUI {
    HLImageItemCell *cell = [HLImageItemCell new];
    cell.center = self.view.center;
    cell.bounds = CGRectMake(0, 0, 200, 200);

    [self.view addSubview:cell];
}

- (void)setBackgroundColor {
    self.view.backgroundColor = [UIColor redColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
