//
//  MVVMViewModel.h
//  MVVMDemo
//
//  Created by okyes will on 2017/9/6.
//  Copyright © 2017年 okyes will. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVMPaper.h"

@interface MVVMViewModel : NSObject

@property (nonatomic, strong) NSString *contentStr;

- (void)setWithModel:(MVVMPaper *)paper;
- (void)onPrintClick;

@end
