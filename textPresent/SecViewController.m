//
//  SecViewController.m
//  textPresent
//
//  Created by tb on 16/12/6.
//  Copyright © 2016年 com.tb. All rights reserved.
//

#import "SecViewController.h"
#import "SecSubViewController.h"

@interface SecViewController ()

@property (nonatomic,strong) SecSubViewController *sub;

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.title = @"TWO";
    
    self.sub = [[SecSubViewController alloc]init];
    [self.navigationController pushViewController:self.sub animated:NO];
    
    UIButton *button = [[UIButton alloc]init];
    [button addTarget: self action:@selector(dismissAction:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Dismiss" forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 0, 100, 33);
    button.center = self.view.center;
    [self.view addSubview:button];
    
    UIButton *pushButton = [[UIButton alloc]init];
    [pushButton addTarget: self action:@selector(pushAction:) forControlEvents:UIControlEventTouchUpInside];
    [pushButton setTitle:@"Push" forState:UIControlStateNormal];
    pushButton.frame = CGRectMake(100, 200, 100, 33);
    [self.view addSubview:pushButton];
}


- (void)dismissAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)pushAction:(id)sender {
    [self.navigationController pushViewController:self.sub animated:YES];
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
