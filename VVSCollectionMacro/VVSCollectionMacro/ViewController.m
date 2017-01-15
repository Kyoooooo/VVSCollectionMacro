//
//  ViewController.m
//  VVSCollectionViewDemo
//
//  Created by sw on 16/12/3.
//  Copyright © 2016年 sw. All rights reserved.
//

#import "ViewController.h"
#import "VVSMacro.h"

@interface ViewController ()
@property(nonatomic,strong) NSArray<NSString *> *actions;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.frame = [UIScreen mainScreen].bounds;
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupSquare];
}

- (void)setupSquare {
    // 小格子的公共父视图
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(0.f, 0.f, VVS_SCREEN_WIDTH, VVS_SCREEN_HEIGHT)];
    [self.view addSubview:backView];
    // 列数
    int colunm = 3;
    // 间距
    int margin = 5;
    // 宽度
    int width = (VVS_SCREEN_WIDTH - (colunm + 1) * margin) / colunm;
    // 高度
    int height = width;
    // 循环添加9个小格子
    for (int i = 0; i < 9; i++) {
        UIButton *button = [[UIButton alloc] init];
        // 使用宏计算frame
        button.frame = CGRectMake(CELL_X_WITH_EDGE_PARAMETERS(backView, width, colunm, margin), CELL_Y_WITH_EDGE_PARAMETERS(backView, height, colunm, margin), width, height);
        // 创建好后就把小格子添加到父视图
        [backView addSubview:button];
        
        CGFloat red = rand() % 255 / 255.f;
        CGFloat green = rand() % 255 / 255.f;
        CGFloat blue = rand() % 255 / 255.f;
        button.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.f];
        // 给每个小格子添加监听事件
        [button addTarget:self action:NSSelectorFromString(self.actions[i]) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (NSArray<NSString *> *)actions {
    if(!_actions){
        _actions = @[NSStringFromSelector(@selector(methodA)),
                     NSStringFromSelector(@selector(methodB)),
                     NSStringFromSelector(@selector(methodC)),
                     NSStringFromSelector(@selector(methodD)),
                     NSStringFromSelector(@selector(methodE)),
                     NSStringFromSelector(@selector(methodF)),
                     NSStringFromSelector(@selector(methodG)),
                     NSStringFromSelector(@selector(methodH)),
                     NSStringFromSelector(@selector(methodI))];
    }
    return _actions;
}

- (void)methodA {
    NSLog(@"%s",__func__);
}

- (void)methodB {
    NSLog(@"%s",__func__);
}

- (void)methodC {
    NSLog(@"%s",__func__);
}

- (void)methodD {
    NSLog(@"%s",__func__);
}
- (void)methodE {
    NSLog(@"%s",__func__);
}

- (void)methodF {
    NSLog(@"%s",__func__);
}

- (void)methodG {
    NSLog(@"%s",__func__);
}

- (void)methodH {
    NSLog(@"%s",__func__);
}
- (void)methodI {
    NSLog(@"%s",__func__);
}

@end
