//
//  ViewController.m
//  02.block传值
//
//  Created by 李善武 on 16/7/7.
//  Copyright © 2016年 李善武. All rights reserved.
//

#import "ViewController.h"
#import "otherVC.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *showLabelf;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)next:(id)sender {
    NSLog(@"跳转到下一页");
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    otherVC *otherVC = segue.destinationViewController;
    [otherVC textBlock:^(NSString *text) {
        self.showLabelf.text = text;
    }];
}
@end
