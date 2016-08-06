//
//  ViewController.m
//  02.属性传值
//
//  Created by 李善武 on 16/7/6.
//  Copyright © 2016年 李善武. All rights reserved.
//

#import "ViewController.h"
#import "OtherViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setNotification];
}
- (IBAction)nextPage:(id)sender {
    OtherViewController *otherVc = [[OtherViewController alloc]init];
    otherVc.view.backgroundColor = [UIColor grayColor];
    //[self.navigationController pushViewController:otherVc animated:YES];
    [self presentViewController:otherVc animated:YES completion:nil];
}

- (void)setNotification{

    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(getNotifaction:) name:@"messagePost" object:nil];
    
}

- (void)getNotifaction:(id)sender{

    NSLog(@"%@",sender);
}
@end
