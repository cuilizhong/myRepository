//
//  MVVMView.m
//  unlockVitta
//
//  Created by lstkwx32516 on 2018/5/8.
//  Copyright © 2018年 lstkwx32516. All rights reserved.
//

#import "MVVMView.h"
#import "FBKVOController.h"
#import "NSObject+FBKVOController.h"

@interface MVVMView()

@property(nonatomic,strong)UILabel *lbContent;
@property(nonatomic,strong)UIButton *btnPrint;
@property(nonatomic,strong)MVVMViewModel *vm;

@end

@implementation MVVMView



-(instancetype)init{
    self = [super init];
    if (self) {
        self.lbContent = [[UILabel alloc]init];
        [self addSubview:self.lbContent];
        self.lbContent.frame = CGRectMake(100, 100, 100, 30);
        self.lbContent.font = [UIFont systemFontOfSize:20];
        self.lbContent.textColor = [UIColor blackColor];
        
        self.btnPrint = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.btnPrint setTitle:@"print" forState:UIControlStateNormal];
        [self.btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.btnPrint];
        self.btnPrint.frame = CGRectMake(100, 200, 100, 50);
        
    }
    
    return self;
}

- (void)setViewModel:(MVVMViewModel *)vm{
    self.vm = vm;
    [self.KVOController observe:vm keyPath:@"contentStr" options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        
        NSString *newContent = change[NSKeyValueChangeNewKey];
        self.lbContent.text = newContent;
        
    }];
}
-(void)onPrintClick{
    [self.vm onPrintClick];
}

@end
