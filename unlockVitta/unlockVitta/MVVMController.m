//
//  MVVMController.m
//  unlockVitta
//
//  Created by lstkwx32516 on 2018/5/8.
//  Copyright © 2018年 lstkwx32516. All rights reserved.
//

#import "MVVMController.h"

@interface MVVMController ()

@end

@implementation MVVMController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    self.viewModel = [[MVVMViewModel alloc]init];
    
    self.paper = [[MVVMPaper alloc]init];
    self.paper.content = @"line 0";
    
    self.mvvmView = [[MVVMView alloc]init];
    self.mvvmView.frame = self.view.bounds;
    [self.view addSubview:self.mvvmView];
    
    
    [self.viewModel setWithModel:self.paper];
    [self.mvvmView setViewModel:self.viewModel];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
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
