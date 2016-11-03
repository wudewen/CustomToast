//
//  ViewController.m
//  封装的提示文字Demo
//
//  Created by 吴德文 on 16/10/20.
//  Copyright © 2016年 XiangYuKeJi. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Toast.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.中间提示文字
    //[self showTostInView:@"欢迎进入主控制器！"];
    
    // 2.底部提示文字
    //[self.view makeToast:@"底部提示文字"];
    
    // 3.活动指示器
    [self showToastActivityInView];

}

// 提示文字
-(void)showTostInView:(NSString *)tost
{
    [self.view makeToast:tost duration:1.5 position:@"center"];
}

// 活动指示器
-(void)showToastActivityInView
{
    // 直接调用显示活动指示器的方法
    [self.view makeToastActivity];
    
    //做一个延时要处理的信息
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(show) userInfo:nil repeats:NO];
}

-(void)show
{
    //将活动显示器隐藏
    [self.view hideToastActivity];
    //调用提示信息的方法
    [self.view makeToast:@"这就是你要显示的信息" duration:2 position:@"center"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
