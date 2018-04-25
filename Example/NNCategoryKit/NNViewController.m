//
//  NNViewController.m
//  NNCategoryKit
//
//  Created by wax2045 on 04/25/2018.
//  Copyright (c) 2018 wax2045. All rights reserved.
//

#import "NNViewController.h"
#import "UIView+NNUIKit.h"

@interface NNViewController ()

@end

@implementation NNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *button = [UIButton createButtonTitle:@"a" textColor:[UIColor yellowColor] font:11 target:self action:nil];
    [self.view addSubview:button];
    button.backgroundColor = [UIColor yellowColor];
    button.frame = CGRectMake(100, 100, 100, 100);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
