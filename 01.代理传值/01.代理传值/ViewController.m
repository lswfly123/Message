//
//  ViewController.m
//  01.代理传值
//
//  Created by 李善武 on 16/7/6.
//  Copyright © 2016年 李善武. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI{

    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 150, 50)];
    button.backgroundColor = [UIColor grayColor];
    [button addTarget:self action:@selector(showFirstVc) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)showFirstVc{

    FirstViewController *firstVC = [[FirstViewController alloc]init];
    [self presentViewController:firstVC animated:YES completion:nil];
   // [self.navigationController pushViewController:firstVC animated:YES];
}
//- (IBAction)next:(id)sender {
//    
//    otherViewController *otherVC = [[otherViewController alloc]init];
//    self.otherVc = otherVC;
//    self.otherVc.delegate = self;
//    [self.navigationController pushViewController:otherVC animated:nil];
//}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//
//    //otherViewController *otherVC = segue.destinationViewController;
//    //otherVC.delegate = self;
//}

//- (void)passValue:(NSString *)string{
//
//    self.showLabel.text = string;
//}
@end
