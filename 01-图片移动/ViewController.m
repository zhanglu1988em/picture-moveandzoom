//
//  ViewController.m
//  01-图片移动
//
//  Created by zhanglu1988em on 16/1/1.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *image;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}


#pragma mark  上下左右移动

- (IBAction)actionUp {
    CGRect frame =  self.image.frame;
    frame.origin.y -= 5;
    self.image.frame = frame;
}

- (IBAction)actionDown {
    CGRect frame =  self.image.frame;
    frame.origin.y += 5;
    self.image.frame = frame;

}

- (IBAction)actionLeft {
    CGRect frame =  self.image.frame;
    frame.origin.x -= 5;
    self.image.frame = frame;

}

- (IBAction)actionRigth {
    CGRect frame =  self.image.frame;
    frame.origin.x += 5;
    self.image.frame = frame;

}


@end
