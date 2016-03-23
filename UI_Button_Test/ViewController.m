//
//  ViewController.m
//  UI_Button_Test
//
//  Created by qingyun on 16/3/22.
//  Copyright © 2016年 xkw. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *lb = [[UILabel alloc] init];
    [self.view addSubview:lb];
    lb.frame = CGRectMake(40, 20, 100, 20);
    lb.text = @"按钮1";
    lb.textColor = [UIColor blackColor];
    UIButton *bt1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:bt1];
    bt1.frame = CGRectMake(40, 40, 100, 68);
    //    bt.backgroundColor = [UIColor redColor];
    //正常状态
    [bt1 setTitle:@"恭喜发财" forState:UIControlStateNormal];
    [bt1 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];//设置正常状态下字体颜色
    [bt1 setBackgroundImage:[UIImage imageNamed:@"1.jpg"] forState:UIControlStateNormal];
    //高亮状态
    [bt1 setTitle:@"清风徐来" forState:UIControlStateHighlighted];
    [bt1 setBackgroundImage:[UIImage imageNamed:@"2.jpg"] forState:UIControlStateHighlighted];
    //禁用状态
    [bt1 setTitle:@"禁止使用" forState:UIControlStateDisabled];
    //bt.backgroundColor = [UIColor redColor];
    //选中状态  UIControlStateSelected
    //UIControlStateApplication
    //保留状态  UIControlStateStateReserved
    
    UIButton *bt2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:bt2];
    bt2.frame=CGRectMake(40, 140, 100,68);
    [bt2 setTitle:@"这是双击事件" forState:UIControlStateNormal];
    [bt2 setImage:[UIImage imageNamed:@"3.jpeg"] forState:UIControlStateNormal];
//    bt2.backgroundColor = [UIColor blackColor];
    //双击事件
    [bt2 addTarget:self action:@selector(exchange) forControlEvents:UIControlEventTouchDownRepeat];
    
    
    UIButton *bt3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:bt3];
    [bt3 setTitle:@"这是个键内松开触发事件按钮"  forState:UIControlStateNormal];
    [bt3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    bt3.frame=CGRectMake(40,240, 100, 68);
    [bt3 setImage:[UIImage imageNamed:@"4.jpg"] forState:UIControlStateNormal];
    bt3.backgroundColor = [UIColor greenColor];
//    bt3.alpha = 0.6;
    //在按钮内松开
    [bt3 addTarget:self action:@selector(upInside) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)exchange{
    NSLog(@"陈宏，，，，，");
}
- (void)upInside{
    NSLog(@"在按钮内松开");
}
@end
