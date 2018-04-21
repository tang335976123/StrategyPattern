//
//  NumberTextFieldValidate.m
//  StrategyPatternDemo
//
//  Created by tangjiling on 2018/4/21.
//  Copyright © 2018年 唐基林. All rights reserved.
//

#import "NumberTextFieldValidate.h"

@implementation NumberTextFieldValidate
-(BOOL)validateInputTextFileld:(UITextField *)textFiled
{
    if(textFiled.text.length == 0) {
        self.attributeInputStr = @"数值空的";
        return self.attributeInputStr;
    }
    
    // 正则验证
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[textFiled text] options:NSMatchingAnchored range:NSMakeRange(0, [[textFiled text] length])];
    
    if (numberOfMatches == 0) {
        self.attributeInputStr = @"数字,输入有问题";
    } else {
        self.attributeInputStr = @"输入正确";
    }
    return self.attributeInputStr == nil ? YES : NO;
}
@end
