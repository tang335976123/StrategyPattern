//
//  CunstomTextFiled.m
//  StrategyPatternDemo
//
//  Created by tangjiling on 2018/4/21.
//  Copyright © 2018年 唐基林. All rights reserved.
//

#import "CunstomTextFiled.h"

@implementation CunstomTextFiled

-(BOOL)validate
{
    BOOL result = [self.inputValidate validateInputTextFileld:self];
    if (!result) {
        NSLog(@"-----%@",self.inputValidate.attributeInputStr);
    }
    return result;
}

@end
