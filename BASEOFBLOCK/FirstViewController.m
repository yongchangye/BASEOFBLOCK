//
//  FirstViewController.m
//  BASEOFBLOCK
//
//  Created by 叶永长 on 8/19/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}
-(void)passValue:(PassValueBlock)block{
    self.passValueBlock = block;
}
-(void)viewWillDisappear:(BOOL)animated{
    if (self.passValueBlock != nil) {
        self.passValueBlock(@"abcd");
    }
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
