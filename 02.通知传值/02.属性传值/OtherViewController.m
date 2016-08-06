//
//  OtherViewController.m
//  02.属性传值
//
//  Created by 李善武 on 16/8/6.
//  Copyright © 2016年 李善武. All rights reserved.
//

#import "OtherViewController.h"

@interface OtherViewController ()

@end

@implementation OtherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //[self createNotification];
    UIButton *button = [[UIButton alloc]init];
    button.frame = CGRectMake((self.view.bounds.size.width - 150)*0.5, 100, 150, 50);
    button.backgroundColor = [UIColor orangeColor];
    [button setTitle:@"上一页" forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(createNotification) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)createNotification{

    NSDictionary *dict = @{@"message" :@"success"};
    
    NSNotification *note = [NSNotification notificationWithName:@"messagePost" object:nil userInfo:dict];
    [[NSNotificationCenter defaultCenter]postNotification:note];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
