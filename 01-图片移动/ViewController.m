//
//  ViewController.m
//  01-图片移动
//
//  Created by zhanglu1988em on 16/1/1.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import "ViewController.h"

typedef enum
{
    KMoveUp     =   0,
    KMoveDown   =   1,
    KMoveLeft   =   2,
    KMoveRigth  =   3
    
}kMoveDir;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *image;

@end

@implementation ViewController

#pragma mark  上下左右移动
//优化之前
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
    
}

- (IBAction)actionRigth {
    CGRect frame =  self.image.frame;
    frame.origin.x += 5;
    self.image.frame = frame;

}
//优化之后
- (IBAction)move:(UIButton *)sender {
    
    CGRect frame =  self.image.frame;
    switch (sender.tag) {
        case KMoveUp:
            frame.origin.y -= 5;
            break;
        case KMoveDown:
            frame.origin.y += 5;
            break;
        case KMoveLeft:
             frame.origin.x -= 5;
            break;
        case KMoveRigth:
            frame.origin.x += 5;
            break;
            
        default:
            break;
    }
    
    
    
    self.image.frame = frame;

}


@end
