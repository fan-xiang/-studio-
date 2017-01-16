//
//  ViewController.m
//  模仿安卓studio登录动画
//
//  Created by 可米小子 on 17/1/16.
//  Copyright © 2017年 可米小子. All rights reserved.
//

#import "ViewController.h"
#import "FXAnimationField.h"

@interface ViewController ()

@property (strong, nonatomic)FXAnimationField *emailAnimationField;
@property (strong, nonatomic)FXAnimationField *passwordAnimationField;
@property (strong, nonatomic)UIImageView *phoneImage;
@property (strong, nonatomic)UIImageView *passwordImage;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.emailAnimationField];
    [self.view addSubview:self.passwordAnimationField];
    [self.view addSubview:self.phoneImage];
    [self.view addSubview:self.passwordImage];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


- (FXAnimationField *)emailAnimationField {
    if (!_emailAnimationField) {
        _emailAnimationField = [[FXAnimationField alloc]initWithFrame:CGRectMake(50, 100, self.view.frame.size.width-50, 40)];
        _emailAnimationField.textFiled.borderStyle =  UITextBorderStyleNone;
        _emailAnimationField.placeholderColor = [UIColor lightGrayColor];
        _emailAnimationField.placeStr = @"用户邮箱";
        _emailAnimationField.placeholderFont = [UIFont systemFontOfSize:15];
        //_emailAnimationField.textColor = [UIColor greenColor];
        _emailAnimationField.animationType = FXAnimationTypeUp;
    }
    return _emailAnimationField;
}

- (FXAnimationField *)passwordAnimationField {
    if (!_passwordAnimationField) {
        _passwordAnimationField = [[FXAnimationField alloc]initWithFrame:CGRectMake(50, 180, self.view.frame.size.width-50, 40)];
        _passwordAnimationField.textFiled.borderStyle =  UITextBorderStyleNone;
        _passwordAnimationField.placeholderColor = [UIColor lightGrayColor];
        _passwordAnimationField.placeStr = @"用户密码";
        _passwordAnimationField.placeholderFont = [UIFont systemFontOfSize:15];
        //_passwordAnimationField.textColor = [UIColor greenColor];
        _passwordAnimationField.animationType = FXAnimationTypeUp;
    }
    return _passwordAnimationField;
    
}

- (UIImageView *)phoneImage {
    if (!_phoneImage) {
        _phoneImage = [[UIImageView alloc]initWithFrame:CGRectMake(10, 105, 24, 24)];
        _phoneImage.image  = [UIImage imageNamed:@"login_moblie"];
    }
    return _phoneImage;
    
}

- (UIImageView *)passwordImage {
    if (!_passwordImage) {
        _passwordImage = [[UIImageView alloc]initWithFrame:CGRectMake(10, 185, 24, 24)];
        _passwordImage.image = [UIImage imageNamed:@"login_passcode"];
    }
    return _passwordImage;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
