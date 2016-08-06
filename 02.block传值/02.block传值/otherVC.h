//
//  otherVC.h
//  02.block传值
//
//  Created by 李善武 on 16/7/7.
//  Copyright © 2016年 李善武. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^returnTextBlock)(NSString *text);
@interface otherVC : UIViewController

@property (nonatomic ,copy) returnTextBlock textBlock;
- (void)textBlock:(returnTextBlock )block;
@end
