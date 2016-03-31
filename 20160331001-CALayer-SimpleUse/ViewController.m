//
//  ViewController.m
//  20160331001-CALayer-SimpleUse
//
//  Created by Rainer on 16/3/31.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 图形的位移和形变
    [UIView animateWithDuration:0.5 animations:^{
        // 平移
        self.redView.layer.transform = CATransform3DMakeTranslation(50, 50, 0);
        
        // 旋转
        self.redView.layer.transform = CATransform3DMakeRotation(M_PI, 0, 1, 0);
        
        // 缩放
        self.redView.layer.transform = CATransform3DMakeScale(0.5, 0.5, 1);
        
        // 使用KVO快速操作
//        [self.redView.layer setValue:@0.5 forKey:@"transform.scale"];
        
//        [self.imageView.layer setValue:@(M_PI) forKey:@"transform.totation"];
    }];
}

/**
 *  设置View的layer层
 */
- (void)setViewLayerProperty {
    
    // 设置图层阴影：Opacity = 1：表示不透明
    self.redView.layer.shadowOpacity = 1;
    
    // 设置图层阴影的偏移量
    //    self.redView.layer.shadowOffset = CGSizeMake(10, 10);
    // 设置图层阴影的颜色
    self.redView.layer.shadowColor = [UIColor yellowColor].CGColor;
    // 设置图层阴影的圆角
    self.redView.layer.shadowRadius = 10;
    // 设置控件图层的圆角
    self.redView.layer.cornerRadius = 50;
    // 设置图层的边框颜色
    self.redView.layer.borderColor = [UIColor whiteColor].CGColor;
    // 设置图层的边框宽度
    self.redView.layer.borderWidth = 2;
}

/**
 *  设置圆形头像
 */
- (void)setImageViewLayerProperty {
    // 设置圆角半径
    self.imageView.layer.cornerRadius = 50;
    // 设置超出部分裁剪掉
    self.imageView.layer.masksToBounds = YES;
    // 设置边框宽度
    self.imageView.layer.borderWidth = 2;
    // 设置边框颜色
    self.imageView.layer.borderColor = [UIColor whiteColor].CGColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
