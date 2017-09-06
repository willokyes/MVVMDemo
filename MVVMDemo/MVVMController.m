//
//  MVVMController.m
//  MVVMDemo
//
//  Created by okyes will on 2017/9/6.
//  Copyright © 2017年 okyes will. All rights reserved.
//

#import "MVVMController.h"
#import "MVVMPaper.h"
#import "MVVMView.h"
#import "MVVMViewModel.h"

@interface MVVMController ()

@property (nonatomic, strong) MVVMPaper     *paper;
@property (nonatomic, strong) MVVMView      *mvvmView;
@property (nonatomic, strong) MVVMViewModel *viewModel;

@end

@implementation MVVMController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.paper = [MVVMPaper new];
    _paper.content = @"line 0";
    
    self.mvvmView = [MVVMView new];
    _mvvmView.frame = self.view.bounds;
    _mvvmView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_mvvmView];
    
    self.viewModel = [MVVMViewModel new];
    
    [_mvvmView setWithViewModel:_viewModel];
    [_viewModel setWithModel:_paper];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
