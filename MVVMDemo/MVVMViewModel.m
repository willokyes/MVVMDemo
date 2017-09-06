//
//  MVVMViewModel.m
//  MVVMDemo
//
//  Created by okyes will on 2017/9/6.
//  Copyright © 2017年 okyes will. All rights reserved.
//

#import "MVVMViewModel.h"
#import "FBKVO/KVOController.h"
#import "MVVMPaper.h"

@interface MVVMViewModel ()

@property (nonatomic, strong) MVVMPaper *model;

@end

@implementation MVVMViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)setWithModel:(MVVMPaper *)paper {
    self.model = paper;
    
    //self.contentStr = paper.content;
    
    [self.KVOController observe:paper keyPath:@"content" options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        NSString *newContent = change[NSKeyValueChangeNewKey];
        if (newContent == nil || [newContent isEqual:[NSNull null]]) {
            
        } else {
            self.contentStr = newContent;
        }
    }];
}

- (void)onPrintClick {
    NSString *content = [NSString stringWithFormat:@"line %d", arc4random()%10];
    self.model.content = content;
}

@end
