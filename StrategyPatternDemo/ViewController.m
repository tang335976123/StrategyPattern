//
//  ViewController.m
//  StrategyPatternDemo
//
//  Created by tangjiling on 2018/4/14.
//  Copyright © 2018年 唐基林. All rights reserved.
//

#import "ViewController.h"
#import "LatterTextFieldValidate.h"
#import "NumberTextFieldValidate.h"
#import "CunstomTextFiled.h"
@interface ViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet CunstomTextFiled *letterInput;
@property (weak, nonatomic) IBOutlet CunstomTextFiled *numberInput;

@end

@implementation ViewController

- (IBAction)btnclick:(id)sender {
    [self.view endEditing:YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];

    self.letterInput.delegate = self;
    self.numberInput.delegate = self;
    
    self.letterInput.inputValidate = [LatterTextFieldValidate new];
    self.numberInput.inputValidate = [NumberTextFieldValidate new];
    
}

#pragma mark - UITextFieldDelegate实现
- (void)textFieldDidEndEditing:(UITextField *)textField {
    
    if ([textField isKindOfClass:[CunstomTextFiled class]]) {
        
        [(CunstomTextFiled *)textField validate];
    }
}
-(void)dealloc
{
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
