//
//  MVVMViewModel.h
//  unlockVitta
//
//  Created by lstkwx32516 on 2018/5/8.
//  Copyright © 2018年 lstkwx32516. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVMPaper.h"


@interface MVVMViewModel : NSObject

@property(nonatomic,strong)NSString *contentStr;

-(void)setWithModel:(MVVMPaper *)model;

-(void)onPrintClick;
@end
