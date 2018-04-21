//
//  LatterTextFieldValidate.m
//  StrategyPatternDemo
//
//  Created by tangjiling on 2018/4/21.
//  Copyright © 2018年 唐基林. All rights reserved.
//

#import "LatterTextFieldValidate.h"

@implementation LatterTextFieldValidate

-(BOOL)validateInputTextFileld:(UITextField *)textFiled
{
    if(textFiled.text.length == 0) {
        self.attributeInputStr = @"数值空的";
        return self.attributeInputStr;
    }
    
    // 正则
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[textFiled text] options:NSMatchingAnchored range:NSMakeRange(0, [[textFiled text] length])];
    
    
    if (numberOfMatches == 0) {
        self.attributeInputStr = @"字母,输入有问题";
    } else {
        self.attributeInputStr = @"输入正确";
    }
    return self.attributeInputStr == nil ? YES : NO;
}


@end
