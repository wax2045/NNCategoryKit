//
//  UIView+NNUIKit.m
//  Ptaxi
//
//  Created by mac on 17/5/16.
//  Copyright © 2017年 mac. All rights reserved.
//


#import "UIView+NNUIKit.h"
#import "UIButton+Block.h"

@implementation UIView (NNUIKit)
#pragma mark - UILabel
+ (UILabel *)createLabelText:(NSString *)text
                   textColor:(UIColor *)textColor
                        font:(CGFloat)font
               textAlignment:(NSTextAlignment)textAlignment
{
    UILabel *label = [UILabel new];
    label.text = text;
    label.textColor = textColor;
    label.font = [UIFont systemFontOfSize:font];
    label.textAlignment = textAlignment;
    return label;
}
+(UILabel *)createLabelFrame:(CGRect)frame
                        text:(NSString *)text
                   textColor:(UIColor *)textColor
               textAlignment:(NSTextAlignment)textAlignment
               numberOfLines:(NSInteger)numberOfLines
{
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    label.text = text;
    label.textAlignment = textAlignment;
    label.textColor = textColor;
    label.numberOfLines = numberOfLines;
    
    return label;
}

+(UILabel *)createLabelFrame:(CGRect)frame
                        text:(NSString *)text
                       color:(UIColor *)textColor
{
    return [self createLabelFrame:frame text:text textColor:textColor textAlignment:NSTextAlignmentCenter numberOfLines:1];
}

#pragma mark - UIButton
+ (UIButton *)createButtonFrame:(CGRect)frame
                   imageName:(NSString *)imageName
                     contentMode:(UIViewContentMode)contentMode
                   clickComplete:(void(^)(UIButton *button))clickComplete
{
    UIButton *button = [self createButtonImageName:imageName contentMode:contentMode clickComplete:clickComplete];
    button.frame = frame;
    return button;
}
+ (UIButton *)createButtonImageName:(NSString *)imageName
                     contentMode:(UIViewContentMode)contentMode
               clickComplete:(void(^)(UIButton *button))clickComplete
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    button.contentMode = contentMode;
    [button handleControlEvent:UIControlEventTouchUpInside withBlock:clickComplete];
    return button;
}
+ (UIButton *)createButtonTitle:(NSString *)title
                   textColor:(UIColor *)textColor
                   textAlignment:(UIControlContentHorizontalAlignment)textAlignment
                   imageName:(NSString *)imageName
              imageContent:(UIViewContentMode)imageContent
                        font:(CGFloat)font
               clickComplete:(void(^)(UIButton *button))clickComplete
{
    UIButton *button = [UIButton createButtonTitle:title textColor:textColor textAlignment:textAlignment font:font clickComplete:clickComplete];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    button.imageView.contentMode = imageContent;
    return button;
}
+ (UIButton *)createButton:(UIButton *)button
                 imageName:(NSString *)imageName
              imageContent:(UIViewContentMode)imageContent
             clickComplete:(void(^)(UIButton *button))clickComplete
{
    return [self createButton:button title:nil textColor:nil textAlignment:UIControlContentHorizontalAlignmentCenter font:16 imageName:imageName imageContent:imageContent clickComplete:clickComplete];
}
+ (UIButton *)createButton:(UIButton *)button title:(NSString *)title
                 textColor:(UIColor *)textColor
             textAlignment:(UIControlContentHorizontalAlignment)textAlignment
                      font:(CGFloat)font
                 imageName:(NSString *)imageName
              imageContent:(UIViewContentMode)imageContent
             clickComplete:(void(^)(UIButton *button))clickComplete
{
    if (button == nil) {
        button = [UIButton buttonWithType:UIButtonTypeCustom];
    }
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:textColor forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    button.contentHorizontalAlignment = textAlignment;
    
    [button handleControlEvent:UIControlEventTouchUpInside withBlock:clickComplete];
    
    if (imageName.length) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        button.imageView.contentMode = imageContent;
    }
    return button;
}
+ (UIButton *)createButton:(UIButton *)button title:(NSString *)title
                      textColor:(UIColor *)textColor
                  textAlignment:(UIControlContentHorizontalAlignment)textAlignment
                           font:(CGFloat)font
                  clickComplete:(void(^)(UIButton *button))clickComplete
{
    
    return [self createButton:button title:title textColor:textColor textAlignment:textAlignment font:font imageName:nil imageContent:0 clickComplete:clickComplete];
}
+ (UIButton *)createButtonTitle:(NSString *)title
                   textColor:(UIColor *)textColor
               textAlignment:(UIControlContentHorizontalAlignment)textAlignment
                        font:(CGFloat)font
               clickComplete:(void(^)(UIButton *button))clickComplete
{
    return [self createButton:[UIButton buttonWithType:UIButtonTypeCustom] title:title textColor:textColor textAlignment:textAlignment font:font clickComplete:clickComplete];
}
+ (UIButton *)createButtonTitle:(NSString *)title
                      textColor:(UIColor *)textColor
                      imageName:(NSString *)imageName
                           font:(CGFloat)font
                         target:(id)target
                         action:(SEL)action
{
    UIButton *button = [self createButtonTitle:title textColor:textColor font:font target:target action:action];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    return button;
}
+ (UIButton *)createButtonTitle:(NSString *)title
                   textColor:(UIColor *)textColor
                        font:(CGFloat)font
                      target:(id)target
                      action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:textColor forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}
+(UIButton *)createButtonFrame:(CGRect)frame
                      title:(NSString *)title
                bgImageName:(NSString *)bgImageName
                     target:(id)target
                     action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    if (bgImageName.length) {
        [btn setImage:[UIImage imageNamed:bgImageName]forState:UIControlStateNormal];
    }
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

#pragma mark - UIImageView
+(UIImageView *)createImageViewImageName:(NSString *)imageName
                             contentMode:(UIViewContentMode)contentMode
{
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageName]];
    imageView.contentMode = contentMode;
    return imageView;
}

+(UIImageView *)createImageViewFrame:(CGRect)frame
                           imageName:(NSString *)imageName
{
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:frame];
    imageView.image = [UIImage imageNamed:imageName];
    return imageView;
}
#pragma mark - UITextField
+ (UITextField *)createTextFieldText:(NSString *)text
                           placeholder:(NSString *)placeholder
                                font:(CGFloat)font
                           textColor:(UIColor *)textColor
{
    UITextField *textField = [UITextField new];
    textField.text = text;
    textField.placeholder = placeholder;
    textField.font = [UIFont systemFontOfSize:font];
    textField.textColor = textColor;
    return textField;
}
+ (UITextField *)createTextFieldText:(NSString *)text
                       textAlignment:(NSTextAlignment)textAlignment
                         placeholder:(NSString *)placeholder
                                font:(CGFloat)font
                           textColor:(UIColor *)textColor
{
    UITextField *textField = [self createTextFieldText:text placeholder:placeholder font:font textColor:textColor];
    textField.textAlignment = textAlignment;
    return textField;
}
#pragma mark - show
- (void)setShadowColor:(UIColor *)color
               opacity:(CGFloat)opacity
                offset:(CGSize)offset
{
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowOpacity = opacity;
    self.layer.shadowOffset = offset;
}
- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}
- (void)setBoarderWidth:(CGFloat)width boarderColor:(UIColor *)color
{
    self.layer.borderWidth = width;
    self.layer.borderColor = color.CGColor;
}
@end
