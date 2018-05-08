//
//  MVVMController.h
//  unlockVitta
//
//  Created by lstkwx32516 on 2018/5/8.
//  Copyright © 2018年 lstkwx32516. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVVMPaper.h"
#import "MVVMView.h"
#import "MVVMViewModel.h"

//Auto property synthesis will not synthesize property 'view'; it will be implemented by its superclass, use @dynamic to acknowledge intention


@interface MVVMController : UIViewController

@property(strong,nonatomic)MVVMView *mvvmView;
@property(strong,nonatomic)MVVMPaper *paper;
@property(strong,nonatomic)MVVMViewModel *viewModel;
@end




