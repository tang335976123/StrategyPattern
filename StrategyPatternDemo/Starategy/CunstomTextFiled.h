//
//  CunstomTextFiled.h
//  StrategyPatternDemo
//
//  Created by tangjiling on 2018/4/21.
//  Copyright © 2018年 唐基林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputTextFileldValidate.h"
@interface CunstomTextFiled : UITextField

//抽像的策略
@property (nonatomic, strong) InputTextFileldValidate *inputValidate;

-(BOOL)validate;

@end
