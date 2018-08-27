//
//  ViewController.m
//  coreAnimation
//
//  Created by 王寒标 on 2018/8/21.
//  Copyright © 2018 王寒标. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *actuiveView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"knight.jpg"];
    self.actuiveView.layer.contents = (__bridge id)image.CGImage;
    self.actuiveView.layer.contentsGravity = kCAGravityTopRight;
    self.actuiveView.layer.geometryFlipped = YES;
    NSLog(@"%d", [self.actuiveView.layer contentsAreFlipped]);
    
    CALayer *layer = [[CALayer alloc] init];
    NSLog(@"%d", [layer contentsAreFlipped]);
}


@end
