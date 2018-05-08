//
//  MVVMViewModel.m
//  unlockVitta
//
//  Created by lstkwx32516 on 2018/5/8.
//  Copyright © 2018年 lstkwx32516. All rights reserved.
//

#import "MVVMViewModel.h"
#import "FBKVOController.h"

@interface MVVMViewModel()

@property(nonatomic,strong)MVVMPaper* model;

@end

@implementation MVVMViewModel

-(instancetype)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)setWithModel:(MVVMPaper *)model{
    self.model = model;
    self.contentStr = model.content;
}

- (void)onPrintClick{
    self.model.content = @"line 1";
    self.contentStr = self.model.content;
}

@end
