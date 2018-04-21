//
//  InputTextFileldValidate.h
//  StrategyPatternDemo
//
//  Created by tangjiling on 2018/4/21.
//  Copyright © 2018年 唐基林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface InputTextFileldValidate : NSObject

-(BOOL)validateInputTextFileld:(UITextField *)textFiled;

@property (nonatomic, copy) NSString *attributeInputStr;


@end
