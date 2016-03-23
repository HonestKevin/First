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
    lb.frame = CGRectMake(40, 20, 200, 20);
    lb.text = @"按钮1";
    lb.textColor = [UIColor lightGrayColor];
    UIButton *bt1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:bt1];
    bt1.frame = CGRectMake(40, 40, 200, 68);
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
    
    UILabel *lb2 = [[UILabel alloc] init];
    [self.view addSubview:lb2];
    lb2.frame = CGRectMake(40, 120, 200, 20);
    lb2.text = @"按钮2（多次点击）";
    lb2.textColor = [UIColor blueColor];
    UIButton *bt2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:bt2];
    bt2.frame=CGRectMake(40, 140, 200,68);
    [bt2 setTitle:@"这是双击事件" forState:UIControlStateNormal];
    [bt2 setBackgroundImage:[UIImage imageNamed:@"3.jpeg"] forState:UIControlStateNormal];
//    bt2.backgroundColor = [UIColor blackColor];
    //双击事件
    [bt2 addTarget:self action:@selector(exchange) forControlEvents:UIControlEventTouchDownRepeat];
    
    //当按钮禁用的情况下,图像的颜色会被画深一点,默认为YES。
    bt2.adjustsImageWhenDisabled = YES;
    
    //
    
    UILabel *lb3 = [[UILabel alloc] init];
    [self.view addSubview:lb3];
    lb3.frame = CGRectMake(40, 220, 200, 20);
    lb3.text = @"按钮3（键内松开）";
    UIButton *bt3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:bt3];
    [bt3 setTitle:@"这是个键内松开触发事件按钮"  forState:UIControlStateNormal];
    [bt3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    bt3.frame=CGRectMake(40,240, 200, 68);
    [bt3 setBackgroundImage:[UIImage imageNamed:@"4.jpg"] forState:UIControlStateNormal];
    bt3.backgroundColor = [UIColor greenColor];
//    bt3.alpha = 0.6;
#if 0
    //在按钮内松开
    [bt3 addTarget:self action:@selector(upInside) forControlEvents:UIControlEventTouchUpInside];
#else    //在按钮外松开
    [bt3 addTarget:self action:@selector(upOutSide) forControlEvents:UIControlEventTouchUpOutside];
#endif
    
    UILabel *lb4 = [[UILabel alloc] init];
    [self.view addSubview:lb4];
    lb4.frame = CGRectMake(40, 320, 200, 20);
    lb4.text = @"按钮4";
    lb4.tintColor = [UIColor blackColor];
    
    //
    UIButton *bt4 = [[UIButton alloc] init];
    bt4 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:bt4];
    bt4.frame = CGRectMake(40, 340,180,300);
    [bt4 setBackgroundImage:[UIImage imageNamed:@"me.jpg"] forState:UIControlStateNormal];
    bt4.backgroundColor = [UIColor grayColor];
    [bt4 setTitle:@"陈宏" forState:UIControlStateNormal];
    [bt4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //设置按钮图片距离边框的距离（上，左，下，右）
    bt4.contentEdgeInsets = UIEdgeInsetsMake(10, 8, 10,8);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)exchange{
    NSLog(@"陈宏，，，，，");
    NSLog(@"当前类的类名: %s",__func__);
}
- (void)upInside{
    NSLog(@"在按钮内松开");
    NSLog(@"当前类的类名为：%s",__func__);
}
- (void)upOutSide{
    NSLog(@"在按钮内松开");
    NSLog(@"类名为：%s",__func__);
}
@end
