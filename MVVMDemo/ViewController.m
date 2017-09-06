//
//  ViewController.m
//  MVVMDemo
//
//  Created by okyes will on 2017/9/6.
//  Copyright © 2017年 okyes will. All rights reserved.
//

#import "ViewController.h"
#import "MVVMController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 3 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [self showMVVM];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showMVVM {
    MVVMController *c = [MVVMController new];
    [self presentViewController:c animated:YES completion:nil];
}

@end
