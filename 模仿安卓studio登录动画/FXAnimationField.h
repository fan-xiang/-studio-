//
//  FXAnimationField.h
//  模仿安卓studio登录动画
//
//  Created by 可米小子 on 17/1/16.
//  Copyright © 2017年 可米小子. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, FXAnimationType){
    FXAnimationTypeUp,
    FXAnimationTypeShake,
    FXAnimationTypeBound
};

@interface FXAnimationField : UIView

/**
 *  输入框文字颜色
 */
@property (strong,nonatomic) UIColor *textColor;
/**
 *  占位符
 */
@property (strong,nonatomic) NSString *placeStr;
/**
 *  占位符颜色
 */
@property (strong,nonatomic) UIColor *placeholderColor;
/**
 *  占位符字体，和textField字体大小相同
 */
@property (strong,nonatomic) UIFont *placeholderFont;
/**
 *  文字对齐方式
 */
@property (assign,nonatomic) NSTextAlignment textAlignment;
/**
 *  输入的文字类容
 */
@property (copy,nonatomic,readonly)NSString *textInput;
/**
 *  动画类型
 */
@property (assign,nonatomic)FXAnimationType animationType;

@property (strong,nonatomic) UITextField *textFiled;


@end
