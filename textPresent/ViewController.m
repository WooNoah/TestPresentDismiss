//
//  ViewController.m
//  textPresent
//
//  Created by tb on 16/12/6.
//  Copyright © 2016年 com.tb. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"
#import "SecSubViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
    self.title = @"ONE";
}


- (IBAction)buttonClick:(id)sender {
    SecViewController *sec = [[SecViewController alloc]init];
//    SecSubViewController *sub = [[SecSubViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:sec];
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
