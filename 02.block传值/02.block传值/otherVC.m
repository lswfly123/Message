//
//  otherVC.m
//  02.block传值
//
//  Created by 李善武 on 16/7/7.
//  Copyright © 2016年 李善武. All rights reserved.
//

#import "otherVC.h"
#import "ViewController.h"
@interface otherVC()
@property (weak, nonatomic) IBOutlet UITextField *inputText;

@end
@implementation otherVC

- (void)textBlock:(returnTextBlock )block{

    self.textBlock = block;
}

- (void)viewWillDisappear:(BOOL)animated{

    if (self.textBlock != nil) {
        self.textBlock(self.inputText.text);
    }
}
@end
