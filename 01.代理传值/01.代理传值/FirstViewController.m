//
//  SecondViewController.m
//  01.代理传值
//
//  Created by 李善武 on 16/8/6.
//  Copyright © 2016年 李善武. All rights reserved.
//

#import "FirstViewController.h"
#import "otherViewController.h"
@interface FirstViewController ()<otherViewDelegate>
@property (nonatomic ,weak) UITextField *textField;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupView];
}

- (void)setupView{

    // 添加页面按钮
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake((self.view.bounds.size.width - 100)/2, 80, 100, 30)];
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor orangeColor]];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    // 添加textField
    UITextField *textField = [[UITextField alloc]init];
    textField.frame = CGRectMake((self.view.bounds.size.width - 150)*0.5, 150, 150, 40);
    textField.backgroundColor = [UIColor orangeColor];
    textField.placeholder = @"传值接收框";
    self.textField = textField;
    [self.view addSubview:textField];
    
    [btn addTarget:self action:@selector(showOtherVC) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)showOtherVC{

    otherViewController *otherVc = [[otherViewController alloc]init];
    otherVc.delegate = self;
    //[self.navigationController pushViewController:otherVc animated:YES];
    [self presentViewController:otherVc animated:YES completion:nil];
}

- (void)passValue:(NSString *)string{

    self.textField.text = string;
}
@end
