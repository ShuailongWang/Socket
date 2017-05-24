//
//  ViewController.m
//  试一试
//
//  Created by admin on 17/5/24.
//  Copyright © 2017年 北京奥泰瑞格科技有限公司. All rights reserved.
//

#import "ViewController.h"
#import "SocketManager.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, strong) SocketManager *socketManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.socketManager = [SocketManager share];
}


//发送
- (IBAction)send:(UIButton *)sender {
    [self.socketManager sendMsg:self.textField.text];
    self.textField.text = @"";
}

//连接
- (IBAction)open:(UIButton *)sender {
    [self.socketManager connect];
}

//断开
- (IBAction)disConnect:(UIButton *)sender {
    [self.socketManager disConnect];
}





@end
