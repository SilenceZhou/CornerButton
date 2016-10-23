//
//  ViewController.m
//  TestBtn
//
//  Created by zhouyun on 16/10/16.
//  Copyright © 2016年 zhouyun. All rights reserved.
//

#import "ViewController.h"
#import "ZYRoundBtn.h"

@interface ViewController ()
@property (nonatomic, strong) ZYRoundBtn *btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.btn = [[ZYRoundBtn alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    self.btn.style = 0;
    [self.btn reloadRoundBtn];
    [self.btn setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:self.btn];
}


- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (self.btn.style == 12) {
        self.btn.style = -1;
    }
    self.btn.style++;
    [self.btn reloadRoundBtn];
}

@end
