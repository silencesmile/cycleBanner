//
//  ViewController.m
//  LunBoTu
//
//  Created by youngstar on 15/8/19.
//  Copyright (c) 2015年 youngstar. All rights reserved.
//

#import "ViewController.h"
#import "SDCycleScrollView.h"

@interface ViewController () <SDCycleScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    [self test];
}

- (void)test
{
    //设置轮播图
    NSArray *images = @[[UIImage imageNamed:@"fish1"],
                        [UIImage imageNamed:@"fish2"],
                        [UIImage imageNamed:@"fish3"],
                        [UIImage imageNamed:@"fish4"],
                        [UIImage imageNamed:@"fish3"]];
    
    //适配不同的屏幕
    if (self.view.frame.size.width == 320&& self.view.frame.size.height == 480) {
        SDCycleScrollView *cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0,0 , self.view.frame.size.width, self.view.frame.size.width / 2.8) imagesGroup:images];
        
        
        
        cycleScrollView.autoScrollTimeInterval = 2 ;
        [self.view addSubview:cycleScrollView];
        
    }else if (self.view.frame.size.width == 320 && self.view.frame.size.height == 568){
        SDCycleScrollView *cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0,0 , self.view.frame.size.width, self.view.frame.size.width / 1.7) imagesGroup:images];
        cycleScrollView.delegate = self;
        
        
        cycleScrollView.autoScrollTimeInterval = 2 ;
        [self.view addSubview:cycleScrollView];
    }else if (self.view.frame.size.width == 375 && self.view.frame.size.height == 667){
        SDCycleScrollView *cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0,0 , self.view.frame.size.width, self.view.frame.size.width / 1.6) imagesGroup:images];
        cycleScrollView.delegate = self;
        cycleScrollView.autoScroll = YES;
        
        
        cycleScrollView.autoScrollTimeInterval = 2 ;
        [self.view addSubview:cycleScrollView];
    }else {
        SDCycleScrollView *cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0,0 , self.view.frame.size.width, self.view.frame.size.width / 1.5) imagesGroup:images];
        cycleScrollView.delegate = self;
        
        
        cycleScrollView.autoScrollTimeInterval = 4 ;
        [self.view addSubview:cycleScrollView];
    }
}

- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"您点击了第%ld张图片", (long)index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
