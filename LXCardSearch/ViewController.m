//
//  ViewController.m
//  LXCardSearch
//
//  Created by zhongzhi on 2017/8/16.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "ViewController.h"
#import "NextController.h"
@interface ViewController ()

@end

@implementation ViewController


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NextController *nextVc =[[NextController alloc]init];
    [self.navigationController pushViewController:nextVc animated:YES];
}

@end
