//
//  ViewController.m
//  BASEOFBLOCK
//
//  Created by 叶永长 on 8/19/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 20);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}
-(void)btnClick:(UIButton *)sender{
    FirstViewController *first = [[FirstViewController alloc]init];
    [first passValue:^(NSString *str) {
        NSLog(@"%@",str);
    }];
    [self.navigationController pushViewController:first animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
