//
//  SecSubViewController.m
//  textPresent
//
//  Created by tb on 16/12/6.
//  Copyright © 2016年 com.tb. All rights reserved.
//

#import "SecSubViewController.h"

@interface SecSubViewController ()

@end

@implementation SecSubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Two sub";
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button = [[UIButton alloc]init];
    [button addTarget: self action:@selector(dismissAction:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"dismiss" forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 0, 100, 33);
    button.center = self.view.center;
    [self.view addSubview:button];
}

- (void)dismissAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
