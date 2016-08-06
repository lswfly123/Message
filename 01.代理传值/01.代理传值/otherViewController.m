//
//  otherViewController.m
//  01.代理传值
//
//  Created by 李善武 on 16/7/6.
//  Copyright © 2016年 李善武. All rights reserved.
//

#import "otherViewController.h"
#import "ViewController.h"
@interface otherViewController()
@property (weak, nonatomic) UITextField *otherInputField;

@end
@implementation otherViewController
- (void)viewDidLoad{

    self.view.backgroundColor = [UIColor whiteColor];
    [self setupUI];
}

- (void)setupUI{

    UITextField *otherInputField = [[UITextField alloc]init];
    otherInputField.frame = CGRectMake((self.view.bounds.size.width - 150)/2 , 150, 150, 40);
    otherInputField.backgroundColor = [UIColor orangeColor];
    otherInputField.placeholder = @"输入所传值";
    self.otherInputField = otherInputField;
    [self.view addSubview:otherInputField];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake((self.view.bounds.size.width - 100)/2, 80, 100, 30)];
    [btn setTitle:@"传值并返回" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor orangeColor]];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)back {
    
    NSString *string = self.otherInputField.text;
    if ([self.delegate respondsToSelector:@selector(passValue:)]) {
        [self.delegate passValue:string];
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
