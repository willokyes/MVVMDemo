//
//  MVVMView.h
//  MVVMDemo
//
//  Created by okyes will on 2017/9/6.
//  Copyright © 2017年 okyes will. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVVMViewModel.h"

@interface MVVMView : UIView

- (void)setWithViewModel:(MVVMViewModel *)vm;

@end
