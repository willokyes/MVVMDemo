//
//  MVVMView.m
//  MVVMDemo
//
//  Created by okyes will on 2017/9/6.
//  Copyright © 2017年 okyes will. All rights reserved.
//

#import "MVVMView.h"
#import "FBKVO/KVOController.h"
#import "MVVMViewModel.h"


@interface MVVMView ()

@property (nonatomic, strong) UILabel *lbContent;

@property (nonatomic, strong) UIButton *btnPrint;

@property (nonatomic, strong) MVVMViewModel *vm;

@end

@implementation MVVMView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.lbContent = [UILabel new];
        _lbContent.frame = CGRectMake(100, 100, 100, 30);
        _lbContent.font = [UIFont systemFontOfSize:20];
        _lbContent.textColor = [UIColor blackColor];
        
        [self addSubview:_lbContent];
        
        self.btnPrint = [UIButton new];
        _btnPrint.frame = CGRectMake(100, 200, 100, 50);
        [_btnPrint setTitle:@"print" forState:UIControlStateNormal];
        [_btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:_btnPrint];
    }
    return self;
}

- (void)setWithViewModel:(MVVMViewModel *)vm {
    self.vm = vm;
    
    [self.KVOController observe:vm keyPath:@"contentStr" options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        NSString *newContent = change[NSKeyValueChangeNewKey];
        if (newContent == nil || [newContent isEqual:[NSNull null]]) {
            
        } else {
            _lbContent.text = newContent;
        }
    }];
}

- (void)onPrintClick {
    [_vm onPrintClick];
}

@end














