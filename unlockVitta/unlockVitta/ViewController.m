//
//  ViewController.m
//  unlockVitta
//
//  Created by lstkwx32516 on 2018/5/8.
//  Copyright © 2018年 lstkwx32516. All rights reserved.
//

#import "ViewController.h"
#import "MVVMController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    MVVMController *mvvmController = [[MVVMController alloc]init];
    [self presentViewController:mvvmController animated:YES completion:^{
        
    }];
}


@end
