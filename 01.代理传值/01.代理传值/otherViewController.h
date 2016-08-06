//
//  otherViewController.h
//  01.代理传值
//
//  Created by 李善武 on 16/7/6.
//  Copyright © 2016年 李善武. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol otherViewDelegate <NSObject>
- (void)passValue:(NSString *)string;
@end
@interface otherViewController : UIViewController

// 设置代理属性
@property (nonatomic ,weak) id <otherViewDelegate> delegate;
@end
